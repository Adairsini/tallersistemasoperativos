
import os

print("================================")
print("     ADMINISTRADOR DE ARCHIVOS")
print("================================")

while True:

    print("\nDIRECTORIO ACTUAL:", os.getcwd())

    print("\n1. Crear archivo")
    print("2. Eliminar archivo")
    print("3. Renombrar archivo")
    print("4. Mover archivo")
    print("5. Cambiar directorio")
    print("6. Mostrar directorio actual")
    print("7. Salir")

    opcion = input("\nSelecciona una opcion: ")

    if opcion == "1":

        nombre = input("Nombre del archivo: ")

        with open(nombre, "w") as archivo:
            archivo.write("Archivo creado desde Python")

        print("Archivo creado correctamente.")

    elif opcion == "2":

        nombre = input("Archivo que deseas eliminar: ")

        if os.path.exists(nombre):
            os.remove(nombre)
            print("Archivo eliminado correctamente.")
        else:
            print("El archivo no existe.")

    elif opcion == "3":

        nombre = input("Nombre actual del archivo: ")
        nuevo = input("Nuevo nombre: ")

        if os.path.exists(nombre):
            os.rename(nombre, nuevo)
            print("Archivo renombrado correctamente.")
        else:
            print("El archivo no existe.")

    elif opcion == "4":

        nombre = input("Archivo que deseas mover: ")
        destino = input("Ruta de destino: ")

        if os.path.exists(nombre):
            if os.path.isdir(destino):
                os.replace(nombre, os.path.join(destino, os.path.basename(nombre)))
                print("Archivo movido correctamente.")
            else:
                print("El directorio de destino no existe.")
        else:
            print("El archivo no existe.")

    elif opcion == "5":

        destino = input("Directorio al que deseas cambiar: ")

        if os.path.isdir(destino):
            os.chdir(destino)
            print("Directorio cambiado correctamente.")
        else:
            print("El directorio no existe.")

    elif opcion == "6":

        print("Directorio actual:", os.getcwd())

    elif opcion == "7":

        print("Saliendo del programa...")
        break

    else:

        print("Opcion no valida.")
