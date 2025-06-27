class Solution:
    def predictPartyVictory(self, senate: str) -> str:
        lenght_n = len(senate)
        # create index lists for check our queue
        radiant_queue, dire_queue = [i for i, e in enumerate(senate) if e == 'R'], [i for i, e in enumerate(senate) if e == 'D']

        # if some queue is empty - we get answer
        while (radiant_queue and dire_queue) :
            # get first index from our queues and remove
            r_index, d_index = radiant_queue.pop(0), dire_queue.pop(0)
            # append element index on end some queue 
            radiant_queue.append(r_index + lenght_n) if r_index < d_index else dire_queue.append(d_index + lenght_n)
            
        return 'Dire' if dire_queue else 'Radiant'


