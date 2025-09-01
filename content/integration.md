+++
title = "Beyond \"Area Under the Curve\""
description = "Other ways of thinking about definite integration."
date = 2025-07-14
+++

When we first learn about definite integration, we are taught that, given a function, it produces the “area under the curve”. Although this is true, it is an oversimplification of the power of integration, and also serves as a barrier to understanding why it is used in other contexts, such as finding the volume of a solid of revolution.

In this post, I'd like to go over some other ways of visualizing and understanding definite integration, its relation to indefinite integration and derivatives, and finally its use outside of finding the area under the curve.

## Solids of Revolution

I want to begin by motivating this change in intuition by showing one of the topics that I saw many classmates struggle with the most: rotational solids. A problem might ask,

> Determine the volume of the solid obtained by rotating the region bounded by $y=x^2, x=1,x=3,$ and the $x$-axis, about the $x$-axis.

![Graph of x squared](/integration/graph1.svg)

Thinking of integrals as area under the curve, it's hard to think about how to approach this intuitively. I was taught that we should integrate a function that outputs the area of the circle with radius $x^2$. That way, the area under this new function is the sum of all of these little circles, giving us our solid. In this case, our integral may look like:

$$ V=\int_{x_1}^{x_2} \pi r^2 dx =\pi \int_{1}^{3} (x^2)^2 dx $$

This works great, until you then encounter a different type of volume problem, such as,

> Determine the volume of a solid whose base is the function $y=(9-x^2)^{1/2}$ and has cross-sections perpendicular to the $x$-axis that are equilateral triangles.

Instead, we can look for a function that gives the cross-sectional area at the given $x$-value to integrate. In the previous problem, it was circles, this time it's equilateral triangles that have side length $y$. It's a bit harder to keep track of, sure, but it's certainly possible with practice.

But what if our volume is perpendicular to the x-axis? Or $y=3x+1$? Although thinking about "area under the curve" works, it's a roadblock to understanding broader applications of definite integration.

There exist other issues with this idea that I've seen other students struggle with. Why does the antiderivative give us the area? Why do we use a function that gives area to calculate arc length? What do those $dx$ and $dy$ terms at the end really mean?

## Intuition for Definite Integration

Let's begin by answering the first question, which gives us a nice way of looking at definite integration.

Here's a visual example:

<iframe src="/integration/graph2.html" width="100%" height="400px" style="border:0;"></iframe>

Here you can see a function and it's antiderivative on the right. As you can see, the height of the rectangles on the left, which approximates the area, are very close to the change in $y$ on the right. It's not exact, but it gives us a visual understanding of why the area under the curve is related to the change in the antiderivative.

For a more algebraic way, let's let our function $f(x)=dy/dx$, making the area becomes height $\times$ width, or $dy/dx \times dx$, or just $dy$. This $dy$ is the change in our antiderivative, so we can simply find the area by looking at the total change in the antiderivative.

So how does this let us think of integration in a new way? If the $dx$ is “multiplied” by $f(x)$, then we can think of the entire expression as a sum rather than an area function. As $dx$ gets closer and closer to 0, we really are just adding up all the values of $f(x)$ at each point, which is why we can use the antiderivative to find the area.

But this means that we can also use integrals any time we try to add up a lot of different values. Let's revisit the problem about solids of revolution:

> Determine the volume of a solid whose base is the function $y=(9-x^2)^{1/2}$ and has cross-sections perpendicular to the $x$-axis that are equilateral triangles.

Instead of thinking about finding a given function that gives the area of the cross-section, we can think about adding up the areas of equilateral triangles with side length $y$. The area of an equilateral triangle with side length $s$ is $\frac{\sqrt{3}}{4}s^2$, so we can write our integral as:

$$ V=\int_{x_1}^{x_2} \frac{\sqrt{3}}{4}y^2 dx = \frac{\sqrt{3}}{4} \int_{x_1}^{x_2} (9-x^2) dx $$

We're not trying to find the area under the curve of this function, but we're thinking about adding up all the values of the function at each point. This is why we can use integrals in so many different contexts, like the average value of a function or the arc length of a curve.

## Approaches to Problem Solving

This definition gives us a powerful tool for problem solving. Let's condense this into a set of steps we may follow when approaching a problem relating to integration:

1. Find what you are adding up. This could be a triangle, a $y$-value, etc.
2. Find the range you are adding over. This could be a range of $x$-values, $y$-values, or even a time interval. Keep in mind which variable you are changing, this will become $dx$, $dt$, etc.
3. Take your function from step 1 and multiply it by the differential from step 2. This gives you the area of a rectangle, which is the change in your antiderivative.
4. Integrate this function over the range from step 2. This is your final answer!

Let's attempt this with a new type of problem you may have encountered before.

> Find the length of $f(x)=\sin(x)$ from $x=0$ to $x=\pi$.

Let's try and follow our steps:

1. What are we adding up? In this case, we need to find the length of the curve, so we are adding up the lengths of little line segments along the curve. We know from algebra that the length of a line segment is $\sqrt{(\Delta x)^2 + (\Delta y)^2}$. We also know that $dx$ and $dy$ are the changes in $x$ and $y$, respectively, so we can rewrite this as $\sqrt{(dx)^2 + (dy)^2}$.
2. Our range in this case is from $x=0$ to $x=\pi$, so we will integrate from 0 to $\pi$, and our differential will be $dx$.
3. In this case, the differential $dx$ is already present in the function, so we can do a bit of algebra to rewrite our function. Keeping in mind that $dy = f\prime(x)dx$, we can write:

$$\begin{aligned}
\sqrt{{dx}^2 + {dy}^2} &= \sqrt{{dx}^2 + {(f\prime(x)dx)}^2} \\\ 
&= \sqrt{{dx^2}(1+f\prime(x)^2)} \\\ 
&=(\sqrt{1+{f\prime(x)}^2})dx \\\ 
&=(\sqrt{1+\cos^2(x)})dx
\end{aligned}$$

4. Now, we can integrate this function from 0 to $\pi$:

$$\begin{aligned}
L&=\int_{0}^{\pi} (\sqrt{1+\cos^2(x)})dx \\\ 
&\approx 3.8202
\end{aligned}$$

I think it's important to note that the manipulation of $dx$ and $dy$ that we performed in step 3 is frowned upon by mathematicians because there exist contexts in which we cannot treat $dx$ and $dy$ as variables. However, for the purposes of introductory calculus, it provides much better intuition, and we don't work with these contexts until later on in our mathematical education. Therefore, it is best to avoid using this type of manipulation on a test or formal setting, but it is a great way to build intuition.


## Conclusion

I hope this post has given you a new way of thinking about definite integration. It is a powerful tool that can be used in many different contexts, and I believe that thinking of it as a way to add up values rather than just finding the area under a curve will help you understand its applications better. I encourage you to explore some of these applications, such as in physics, economics, or in further math. If you want some practice, I recommend working through some [integration bee](https://math.mit.edu/~yyao1/pdf/qualifying_round_2025_test.pdf) problems.