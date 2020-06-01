from sklearn.svm import LinearSVC
from scipy.special import erf


import pylab
import nest
neuron = nest.Create("iaf_psc_alpha")
nest.GetStatus(neuron)
nest.GetStatus(neuron, "I_e")
nest.GetStatus(neuron, ["V_reset", "V_th"])
nest.SetStatus(neuron, {"I_e": 376})
multimeter = nest.Create("multimeter")
nest.SetStatus(multimeter, {"withtime":True, "record_from":["V_m"]})
spikedetector = nest.Create("spike_detector",
                params={"withgid": True, "withtime": True})

nest.Connect(multimeter, neuron)
nest.Connect(neuron, spikedetector)

nest.Simulate(1000.0)