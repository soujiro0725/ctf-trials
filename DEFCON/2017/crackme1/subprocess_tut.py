import subprocess

def test():
    proc = subprocess.Popen(['python', '-u', '-m', 'http.server', '8070'],
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT)
    try:
        time.sleep(0.2)
        resp = urllib.request.urlopen('http://localhost:8070')
        assert b'Directory listing' in resp.read()
    finally:
        proc.terminate()
        try:
            outs, _ = proc.communicate(timeout=1.2)
            print('== subprocess exited with rc =', proc.returncode)
            print(outs.decode('utf-8'))
        except subprocess.CalledProcessError:
        #except subprocess.TimeoutExpired:
            print('subprocess did not terminate in time')

if __name__ == '__main__':
    test()
