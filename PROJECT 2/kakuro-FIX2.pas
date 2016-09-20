BEGIN
	numeric papan[4][4]
	call buatpapan(papan)
	call bermain(papan)
	call buatKunci(kunci)
END

PROCEDURE buatPapan(input numeric papan)
BEGIN
	numeric i = 0
	while(i < 4)
	BEGIN
		numeric j = 0
		while(j < 4)
		BEGIN
			papan[i][j] = ""
			j = j + 1
			papan[0][1] = 12
			papan[0][2] = 15
			papan[0][3] = 18
		END
		i = i + 1
		papan[0][1] = 16
		papan[0][2] = 15
		papan[0][3] = 24
	END
END

PROCEDURE bermain(papan)
	boolean StatusMain = true //true untuk bermain, false jika sudah selesai
	while(StatusMain)
	BEGIN
		accept baris 
		accept kolom
		//CEK PAPAN
		if(cekPapan(papan,baris,kolom))
		BEGIN
			papan[baris][kolom] = pemain
			statusMain = call cekKemenangan(papan,pemain)
			if(statusMain)
			BEGIN
				//cek pemain
				if StatusMain = true
				BEGIN
					return bermain
				END
				END IF
			END
			END IF
		END
		END IF
	END
	display 'KAMU MENANG!!!!!'
END

FUNCTION cekPapan(input character papan, input numeric baris, input numeric kolom)
BEGIN
	if(papan[baris][kolom]= buatKunci papan[baris][kolom])
		return true
	else
		return false
END

FUNCTION cekKemenangan(input numeric papan)
BEGIN
	BEGIN
	accept x,y
	numeric n = 3
	staus = true
	for(numeric i = 0;i < n;i++)
		for(numeric j = 0;j < n;j++)
			if(tmp[i,j] = z)
			status = false
	END
		BEGIN
		status = true
		for(numeric i = 0;i < y; i++)
			for(numeric j = y;j <= n;j++)
				if(tmp[i,j] = z)
				status = false
		END
			BEGIN
			if(status = true)
			BEGIN
				if(kunci [x,y] = z)
				BEGIN
					(tmp[x,y] = z)
				END
			END
END	

PROCEDURE buatKunci(kunci)
BEGIN
	numeric i = 0
	while(i<3)
	BEGIN
		numeric j = 0
		while(j<3)
		BEGIN
		kunci[1][1] = 1
		kunci[1][2] = 2
		kunci[1][3] = 3
		kunci[2][1] = 4
		kunci[2][2] = 5
		kunci[2][3] = 6
		kunci[3][1] = 7
		kunci[3][2] = 8
		kunci[3][3] = 9
		END
		j = j + 1
	END
	i = i + 1
END