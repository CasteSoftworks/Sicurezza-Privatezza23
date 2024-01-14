import os
import signal
import time

def send_signals(pid, signal_list):
    for sig in signal_list:
        try:
            sig_num = getattr(signal, sig)
            os.kill(pid, sig_num)
            time.sleep(1)
        except AttributeError:
            print(f"Il segnale {sig} non è valido.")

pid = 2986  # Sostituisci con il tuo effettivo identificatore di processo
signals = ['SIGHUP', 'SIGUSR1', 'SIGUSR2', 'SIGINT', 'SIGINT', 'SIGHUP', 'SIGUSR1', 'SIGABRT', 'SIGUSR2', 'SIGABRT', 'SIGINT', 'SIGHUP', 'SIGUSR1', 'SIGABRT', 'SIGUSR2', 'SIGUSR2', 'SIGUSR1', 'SIGINT', 'SIGHUP', 'SIGUSR1', 'SIGABRT', 'SIGUSR2', 'SIGABRT', 'SIGUSR2', 'SIGABRT', 'SIGUSR1', 'SIGUSR2', 'SIGHUP', 'SIGABRT', 'SIGHUP', 'SIGUSR2', 'SIGABRT', 'SIGUSR2', 'SIGHUP', 'SIGINT', 'SIGUSR2', 'SIGUSR1', 'SIGUSR1', 'SIGUSR1', 'SIGUSR1', 'SIGUSR2', 'SIGINT', 'SIGUSR2', 'SIGHUP', 'SIGUSR2', 'SIGABRT', 'SIGUSR1', 'SIGHUP', 'SIGUSR2', 'SIGUSR1']

send_signals(pid, signals)
