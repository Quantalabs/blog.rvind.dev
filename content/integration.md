+++
title = "Beyond \"Area Under the Curve\""
description = "Other ways of thinking about definite integration."
date = 2025-07-14
+++

In most textbooks, definite integration is defined as producing the "area under the curve" of a given function. While this definition is true, thinking about integration only in terms of area is an oversimplification of the power of integration. Furthermore, the definition can become a barrier to understanding why we use integration in other contexts, such as for volume and arc length. Thus, in this post, I'd like to go over other ways of thinking about definite integration and the applications of definite integration in other contexts.

## Solids of Revolution

I want to begin by providing motivation for the change in intuition. To do this, I will use a topic that I saw many classmates struggle with: rotational solids. A problem may ask,

> **Example 1.1:** Determine the volume of the solid obtained by rotating the region bounded by $y=x^2, x=1,x=3,$ and the $x$-axis, about the $x$-axis.

<img class="invert" src="/integration/graph1.svg">

If we view integrals as simply giving us the area under a given function, then approaching **(1.1)** intuitively becomes harder. Since integrals give us area, not volume, we should begin by finding a way to translate the problem into 2 dimensions. Rotating a single point on our graph would give us a circle, so what if we integrate a function that gives the area of the circle for each point on our graph? The area of a circle is $\pi r^2$, so what is $r$? In this case, $r$ would have to be the $y$ value, or $x^2$. By letting $r=x^2$, we make our function output the area of the circle that we obtained by rotating our point on the graph.

$$ V=\int_{x_1}^{x_2} \pi r^2 dx =\pi \int_{1}^{3} (x^2)^2 dx $$

This method, albeit lengthy, works fine for this case, so let's see how we can use it on a harder problem.

> **Example 1.2** Determine the volume of a solid whose base is the region contained by $y=(9-x^2)^{1/2}$,$x=1$, $x=3$, and $y=0$, and has cross-sections perpendicular to the $x$-axis that are equilateral triangles.

<img class="invert" src="/integration/graph1.2.svg">

With **(1.1)**, we translated our problem into 2 dimensions first. Let's do that again. With one point, it's $y$-value becomes the length of the base of an equilateral triangle. So, we should integrate a function that gives us the area of these equilateral triangles. In this case, that function would be $\frac{\sqrt 3}{4} s^2$, where $s$ becomes $y=\sqrt{9-x^2}$.

But what if we're looking at $y=10x$ as a boundary instead of $y=0$? What about if we rotated around the $y$-axis? Although thinking about "area under the curve" works, constantly translating between 2-D and 3-D is a headache and a barrier to a deeper understanding.

There exist other issues with this definition that I've seen other students struggle with, which will be the focus of the rest of this post. Namely, 
1. Why does the *antiderivative* give us the *area*? Why should they be related?[^1]
2. What do those $dx$ and $dy$ terms at the end really mean?
3. Why do we use an integral, an area function, to find the length of a curve?

## Intuition for Definite Integration

The answer to our first question also gives us a new way of approaching integration.

Here's a visual example:

<iframe class="invert" src="/integration/graph2.html" width="100%" height="400px" style="border:0;"></iframe>

Here, we can see a linear function on the left, and its antiderivative on the right. The regions and functions in the graphs are unimportant, we can pick any region or function. What we care about is the relationship between the area of the the function and the change in the antiderivative. We notice that the change in the antiderivative is very close to the sum of the heights of the boxes.

 Visually, we can think about the diagram another way: the graph is of a quadratic function (on the right) and it's derivative (on the left). Now, this relationship makes more sense. The height at any one point on a derivative, $f'(x)$, is defined to be the instantaneous rate of change of $f(x)$. Conversely, the height at any one point on a function, must be the instantaneous rate of change of the function's antiderivatives. What this means is that if we make thinner boxes, the area of the function becomes closer to the actual change in the antiderivative!

We can also approach the diagram algebraically, and answer the second question. Let's call the function on the left $f(x)$, and the width of each box $dx$. If we are trying to find the area of this function, we should sum up the areas of the boxes for a very small value of $dx$. This is adding up the values of $f(x) \times dx$ for several $x$ values. Also note, however, that $f(x)$ is the derivative of the function on the right, which we can call $y$, which means that we can instead write $dy/dx$ instead of $f(x)$. This means, the area is $\frac{dy}{dx} \times dx = dy$, added up for each $x$-value. Remember how we write the expression in an integral as $f(x) dx$? The $dx$ is "multiplied" by $f(x)$, and we can just measure the change in our antiderivative to calculuate this sum! 

So how does this let us think of integration in a new way? If the $dx$ is “multiplied” by $f(x)$, then we can think of the entire integral as a sum rather than an area function. As $dx$ gets closer and closer to 0, we really are just adding up all the values of $f(x)$ at each point, which is why we can find the area of a given function.

But this means that we can also use integrals any time we try to add up a lot of different continuous values. Let's revisit the problem about solids of revolution:

> **Example 1.2** Determine the volume of a solid whose base is the region contained by $y=(9-x^2)^{1/2}$,$x=1$, $x=3$, and $y=0$, and has cross-sections perpendicular to the $x$-axis that are equilateral triangles.

Instead of thinking about finding a given function that gives the area of the cross-section, we can think about adding up the areas of equilateral triangles with side length $y$. The area of an equilateral triangle with side length $s$ is $\frac{\sqrt{3}}{4}s^2$, so we can write our integral as:

$$ V=\int_{x_1}^{x_2} \frac{\sqrt{3}}{4}y^2 dx = \frac{\sqrt{3}}{4} \int_{x_1}^{x_2} (9-x^2) dx $$

We're not trying to find the area under the curve of this function, but we're thinking about adding up all the values of the function at each point. This is why we can use integrals in so many different contexts, like the average value of a function or the arc length of a curve.

## Approaches to Problem Solving

This definition gives us a powerful tool for problem solving. Let's condense this into a set of steps we may follow when approaching a problem relating to integration:

1. Find what you are adding up. This could be a triangle, a $y$-value, etc.
2. Find the range you are adding over. This could be a range of $x$-values, $y$-values, or even a time interval. Keep in mind which variable you are changing, this will become $dx$, $dt$, etc.
3. Take your function from step 1 and multiply it by the differential (e.g. $dx$, $dy$, etc.) from step 2. This gives you the area of a rectangle, which is the change in your antiderivative.
4. Integrate this function over the range from step 2. This is your final answer!

Let's attempt this with a new type of problem you may have encountered before.

> **Example 3.1:** Find the length of $f(x)=\sin(x)$ from $x=0$ to $x=\pi$.

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

I hope this post has given you a new way of approaching definite integration. It is a powerful tool that can be used in many different contexts, and I believe that thinking of integration as a way to add up values rather than just finding the area under a curve will help you understand the applications better. I encourage you to explore some of these applications, such as in physics, economics, or in further math. If you want some practice, I recommend working through some [integration bee](https://math.mit.edu/~yyao1/pdf/qualifying_round_2025_test.pdf) problems.

[^1]: An antiderivative of a given function, $f(x)$, refers to the function whose derivative is $f(x)$. The output of an indefinite integral gives us a general antiderivative (which is why we have a $+C$), and we use this antiderivative, with $C=0$, when we compute the result of an indefinite integral.
