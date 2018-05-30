# aorta-bifurcation
A term project that uses a hybrid distributed-lumped parameter model to simulate an aorta bifurcation and calculate the impedance modulus and phase based on a range of frequencies and other parameters.

From the project description by Dr. Guohao Dai, PhD:

Lumped parameter models (e.g. windkessel model) are very easy and simple models that can
characterize the behavior of cardiovascular system. However, because all the variables are lumped
together, it lacks lots of actual features such as vessel wall properties, blood viscosity, wave
propagations as well as anatomical information. Distributed models can take these into account.
However, considering the complexity of the cardiovascular system, it sometimes involves too many
vessel segment and too many parameters.

If we look at the main features of the vascular system as it goes from major vessels into capillaries,
and considering the important driven forces at each sites, we can propose a relatively simple hybrid
distributed-lumped parameter model. The model consists of two viscoelastic
tubes of differing lengths, each terminated in a modified Windkessel with inductance as well as
resistance and compliance. In this way, the influence of the vessel wall, wave reflection, Womersley’s
effect and multiple reflection sites, features that are important in major arteries, can be modeled.
When we go to the peripheral circulation, these effects become less important, therefore, they can be
modeled by lumped parameter model with good accuracy. Combining important individual features
of systemic and peripheral circulation, this model predicts a more realistic impedance modulus and
phase than lumped parameter models.

-----

This project uses MATLAB to simulate the impedance and phase of an aorta bifurcation over a range of frequencies using this hybrid model. The formulas and equations were converted into MATLAB functions and then a script was written for each question proposed in the project description. Appropriate plots are included in the project report and can be reproduced by running the question scripts.
