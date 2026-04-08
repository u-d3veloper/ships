import datetime


def trace_execution(func):
    def wrapper(*args, **kwargs):
        start_time = datetime.datetime.now()
        try:
            result = func(*args, **kwargs)
            # On print juste pour l'opérateur derrière son écran
            print(
                f"[DEBUG] {func.__name__} completed in {datetime.datetime.now() - start_time}")
            return result
        except Exception as e:
            print(f"[ALERT] Failure in {func.__name__}: {e}")
            raise
    return wrapper
