import os


def do_something() -> str:
    return "returned text"


def main() -> None:
    some_number: int = do_something()
    calculated_number: int = some_number + 1
    print("sum: " + calculated_number)


if __name__ == "__main__":
    main()
