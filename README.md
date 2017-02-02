# create-coherent-time-series
The time courses are created by first setting the base frequency of the two oscillators (e.g. 12 Hz), and by inducing small, random jitters to the instantaneous frequencies of both oscillators at each time point.  The jittered instantaneous frequencies are then used to generate the sine wave oscillators using an exponential function and the cumulative sums of the instantaneous frequencies. In practice, this approach generates two oscillators that operate on average at the same frequency (e.g. 12 Hz) and that have, on average, a zero phase delay. However, as the frequencies of the oscillators are jittered across time, the instantaneous phase relationship also fluctuates between positive and negative values. As the phase relationship between the two oscillators is not constant, the procedure allows us to achieve coherence levels below 1. The frequency jittering is performed randomly in a loop until the desired coherence level (e.g. 0.4) between the time courses of the two oscillators is obtained.
# License
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.<br><br>
