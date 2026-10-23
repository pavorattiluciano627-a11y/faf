-- function created 26-th by the script at run time
-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime1(...)
	error("Luraph runtime function, not devirtualized")
end

-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime2(...)
	error("Luraph runtime function, not devirtualized")
end

-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime3(...)
	error("Luraph runtime function, not devirtualized")
end

-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime4(...)
	error("Luraph runtime function, not devirtualized")
end

-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime5(...)
	error("Luraph runtime function, not devirtualized")
end

-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime6(...)
	error("Luraph runtime function, not devirtualized")
end

local function payload_fn_26()
	upv1.Parent = upv2
end

-- function created 27-th by the script at run time
local function payload_fn_27(arg, arg2, arg3)
	local state = 1
	local v, v2, v3, n, v4, n2, n3, n4, n5, n6, str, flag, flag2, v5, v6, v7, v8, flag3, v9, n7, flag4, flag5, flag6, flag7, v10, v11, byte

	while true do
		if state == 1 then
			v = arg
			v2 = arg2
			v3 = arg3
			local v12 = nil
			n = nil
			v4 = nil
			n2 = nil
			state = 2
		elseif state == 2 then
			n3 = 3973414706
			n4 = 4251487320
			n5, n6, str = string.find(v, "[%:](%d%d*)[^%x%X]*[\r\n%:][^%w%W]*")
			flag = not n5

			if n5 then
				state = 4
			else
				state = 3
			end
		elseif state == 3 then
			flag2 = flag
			state = 5
		elseif state == 4 then
			flag2 = not n6
			state = 5
		elseif state == 5 then
			if flag2 then
				state = 6
			else
				state = 8
			end
		elseif state == 6 then
			upv1(428232913, 4)
			upv3 = 360773031
			v5 = upv4

			if v5 then
				state = 7
			else
				state = 16
			end
		elseif state == 7 then
			v5()
			state = 8
		elseif state == 8 then
			upv1(n5, 2)
			upv1(n6, 2)
			v6 = string.match(v, "%:[^%l%L]?([%d]+)[\n\r%:]")
			flag2 = upv1

			if str then
				state = 10
			else
				state = 9
			end
		elseif state == 9 then
			str = v6
			state = 62
		elseif state == 10 then
			n = v6
			state = 11
		elseif state == 11 then
			flag2(str + 0, 2)
			n4 = bit32.bxor(n4, v3)
			str = upv1

			if n then
				state = 12
			else
				state = 37
			end
		elseif state == 12 then
			str(n + 0, 2)
			local v12 = string.gmatch(v, "[%:]([%d]%d*)[^%a%A]?[\r%:\n][^%w%W]?")
			str = v12()
			upv5(v12(), nil)

			if nil then
				state = 13
			else
				state = 73
			end
		elseif state == 13 then
			v7 = upv1

			if str then
				state = 15
			else
				state = 14
			end
		elseif state == 14 then
			str = v7
			state = 45
		elseif state == 15 then
			flag2 = v7
			state = 16
		elseif state == 16 then
			flag2(str + 0, 2)
			str = string.sub(v, n5 + 1, n6 - 1)
			flag2 = string.char(string.byte(v, n5 + 1, n6 - 1))
			v8 = string.byte(v, n5 + 1, n5 + 1)
			v4 = upv1
			n2 = 0
			state = 17
		elseif state == 17 then
			n3 += n4
			v4(str + n2, 2)
			flag3 = not not n
			state = 18
		elseif state == 18 then
			if nil <= nil then
				state = 19
			else
				state = 18
			end
		elseif state == 19 then
			flag3(flag2 + 0, 2)
			upv2(v8, 61236472)
			local tbl = { 1, nil, n5 + 1 - 1, v9, n6 - 1 + 0 }
			n5 = 0
			v9 = tbl
			state = 20
		elseif state == 20 then
			local v12 = v9[1]
			local v13 = v9[5]
			n7 = v9[3] + v12
			flag4 = v12 <= 0
			flag5 = not flag4
			flag6 = n7 >= v13
			flag7 = n7 <= v13

			if flag4 then
				state = 22
			else
				state = 21
			end
		elseif state == 21 then
			flag6 = flag4

			if flag5 then
				state = 24
			else
				state = 23
			end
		elseif state == 22 then
			if flag5 then
				state = 24
			else
				state = 23
			end
		elseif state == 23 then
			flag7 = flag5

			if flag6 then
				state = 26
			else
				state = 25
			end
		elseif state == 24 then
			if flag6 then
				state = 26
			else
				state = 25
			end
		elseif state == 25 then
			flag6 = flag7
			state = 26
		elseif state == 26 then
			v9[3] = n7

			if flag6 then
				state = 74
			else
				state = 27
			end
		elseif state == 27 then
			v9 = v9[4]
			state = 28
		elseif state == 28 then
			upv1(n5, 2)
			v10 = nil
			local n8 = 0
			local gsub = string.gsub
			local v12 = bit32.bxor(n4, 3785256874)

			local function fn(arg4)
				v10 = arg4
				local v13 = n8
				bit32.bxor(v12, 526411257)
				v12 = bit32.bxor(v12, 4255438061)
				n8 = v13 + 1
			end

			local v13 = bit32.bxor(v3, 362570013)
			v12 = bit32.bxor(v12, v13)
			local v14
			v14, n5 = gsub(v, "[:][^%x%X]*(%d%d*)[^%d%D]?[:\r\n]", fn, 1)
			n3 += v3
			upv5(n8, 1)

			if nil then
				state = 30
			else
				state = 29
			end
		elseif state == 29 then
			error("devirt: symbolic value store into proto array (at 42:593)")
		elseif state == 30 then
			state = 31
		elseif state == 31 then
			upv5(n5, 1)

			if nil then
				state = 32
			else
				state = 64
			end
		elseif state == 32 then
			n5 = upv1

			if v10 then
				state = 33
			else
				state = 43
			end
		elseif state == 33 then
			n6 = v10
			state = 34
		elseif state == 34 then
			n5(n6 + 0, 2)
			upv5(string.sub(v, 2, 2), v2)

			if nil then
				state = 35
			else
				state = 50
			end
		elseif state == 35 then
			v11 = upv2
			byte = string.byte

			if v3 + 295165806 == 325886745 then
				state = 37
			else
				state = 36
			end
		elseif state == 36 then
			v11(byte(v, 2, 2), 61236472)
			state = 67
		elseif state == 37 then
			if nil then
				state = 38
			else
				state = 54
			end
		elseif state == 38 then
			if nil <= 12 then
				state = 58
			else
				state = 39
			end
		elseif state == 39 then
			if nil <= 19 then
				state = 51
			else
				state = 40
			end
		elseif state == 40 then
			if nil <= 22 then
				state = 46
			else
				state = 41
			end
		elseif state == 41 then
			if nil <= 24 then
				state = 44
			else
				state = 42
			end
		elseif state == 42 then
			if nil <= 25 then
				state = 13
			else
				state = 43
			end
		elseif state == 43 then
			n6 = 0
			state = 34
		elseif state == 44 then
			if nil <= 23 then
				state = 45
			else
				state = 12
			end
		elseif state == 45 then
			flag2 = str
			str = 0
			state = 16
		elseif state == 46 then
			if nil <= 20 then
				state = 50
			else
				state = 47
			end
		elseif state == 47 then
			if nil <= 21 then
				state = 49
			else
				state = 48
			end
		elseif state == 48 then
			upv1(428232913, 4)
			upv3 = 360773031
			upv4()
			state = 31
		elseif state == 49 then
			upv1(428232913, 4)
			upv3 = 360773031
			v5 = upv4

			if v5 then
				state = 7
			else
				state = 68
			end
		elseif state == 50 then
			upv1(428232913, 4)
			upv3 = 360773031
			upv4()
			state = 35
		elseif state == 51 then
			if nil <= 15 then
				state = 56
			else
				state = 52
			end
		elseif state == 52 then
			if nil <= 17 then
				state = 55
			else
				state = 53
			end
		elseif state == 53 then
			if nil <= 18 then
				state = 54
			else
				state = 31
			end
		elseif state == 54 then
			n = 0
			state = 12
		elseif state == 55 then
			if nil <= 16 then
				state = 20
			else
				state = 11
			end
		elseif state == 56 then
			if nil <= 13 then
				state = 8
			else
				state = 57
			end
		elseif state == 57 then
			if nil <= 14 then
				state = 17
			else
				state = 28
			end
		elseif state == 58 then
			if nil <= 5 then
				state = 68
			else
				state = 59
			end
		elseif state == 59 then
			if nil <= 8 then
				state = 65
			else
				state = 60
			end
		elseif state == 60 then
			if nil <= 10 then
				state = 63
			else
				state = 61
			end
		elseif state == 61 then
			if nil <= 11 then
				state = 62
			else
				state = 75
			end
		elseif state == 62 then
			n = str
			str = 0
			state = 11
		elseif state == 63 then
			if nil <= 9 then
				state = 64
			else
				state = 4
			end
		elseif state == 64 then
			upv1(428232913, 4)
			upv3 = 360773031
			upv4()
			state = 32
		elseif state == 65 then
			if nil <= 6 then
				state = 35
			else
				state = 66
			end
		elseif state == 66 then
			if nil <= 7 then
				state = 67
			else
				state = 34
			end
		elseif state == 67 then
			return
		elseif state == 68 then
			if nil <= 2 then
				state = 71
			else
				state = 69
			end
		elseif state == 69 then
			if nil <= 3 then
				state = 2
			else
				state = 70
			end
		elseif state == 70 then
			if nil <= 4 then
				state = 5
			else
				state = 16
			end
		elseif state == 71 then
			if nil <= 0 then
				state = 27
			else
				state = 72
			end
		elseif state == 72 then
			if nil <= 1 then
				state = 32
			else
				state = 73
			end
		elseif state == 73 then
			upv1(428232913, 4)
			upv3 = 360773031
			upv4()

			if v3 ~= 189999509 then
				state = 13
			else
				state = 11
			end
		elseif state == 74 then
			n6 = n7
			state = 75
		elseif state == 75 then
			n5 = n5 * 10 + string.byte(v, n6, n6) - 48
			state = 20
		end
	end
end

-- function created 29-th by the script at run time
local function payload_fn_29(arg)
	local fn = nil
	local n = 780681653
	local n2 = 2323330950
	local v = string.match(arg, ":[^%p%P]*([0-9][0-9]*)[:\r\n][^%p%P]-")
	local v2 = string.gmatch(arg, "[%:][^%l%L]?([%d]+)[^%d%D]?[:\r\n][^%l%L]-")()
	local v3, v4 = string.find(arg, "%:([%d]+)[\n%:\r][^%c%C]?")
	local flag = not v3
	local flag2

	if v3 then
		flag2 = not v4
	else
		flag2 = flag
	end

	if flag2 then
		upv4(-2, "NextUnitVector")
		upv5 = "GetPositionOnCurve"
		upv6()
	end

	local str = string.sub(arg, v3 + 1, v4 - 1)
	local v5 = string.char(string.byte(arg, v3 + 1, v4 - 1))
	local v6 = nil
	local n3 = 0
	local n4 = n2 - 2066826249
	local v7 = str

	fn = function()
		local v8 = upv1
		bit32.bxor(n4, 11218459)
		n4 = bit32.bxor(n4, 752814811)
		local flag3 = bit32.bxor(n4, 19334603) ~= 182341249
		upv3(v8(1, "f"), fn)

		if not nil then
			upv4("FromName", nil --[[ constant not decoded ]])
			upv5 = "Max"
			upv6()
		end

		while true do
			local gsub = string.gsub
			upv3(upv1(2, "f"), gsub)

			if not nil then
				upv4(Vector3.new(0.23199274, 0.42788926, 0.85903615), "byte")
				upv5 = "f"
				upv6()
			end
		end
	end

	local gsub = string.gsub
	n4 = bit32.bxor(n4, n - 550441033)
	local v8, v9 = gsub(arg, "[%:][^%w%W]?([0-9][0-9]*)[\n%:\r][^%p%P]?", fn, 1)
	upv3(n3, 1)

	if nil then
	else
		upv4(4233730824, "Magnitude")
		upv5 = -2
		upv6()
		local flag3 = bit32.bxor(n2, 56255331) ~= 387254077
		n = n // 104 - 3521792197
	end

	upv3(v9, 1)

	if not nil then
		upv4(428232913, 4)
		upv5 = 360773031
		upv6()
	end

	local flag3 = not v
	local flag4

	if v then
		flag4 = not v2
	else
		flag4 = flag3
	end

	if flag4 or not v7 or not v5 or not v6 then
		upv4(428232913, 4)
		upv5 = 360773031
		upv6()
	end

	local n5 = v + 0
	local n6 = v2 + 0
	local n7 = v7 + 0
	local n8 = v5 + 0
	local n9 = v6 + 0
	local v10 = upv3
	upv3(v, v2)
	local v11

	if nil then
		v11 = n6
	else
		v11 = n6
		local v12 = upv4
		local v13 = bit32.bor(n2, n)
		v12(428232913, 4)
		upv5 = 360773031
		upv6()
	end

	upv3(v2, v7)

	if not nil then
		upv4(428232913, 4)
		upv5 = 360773031
		upv6()
	end

	upv3(v7, v5)

	if not nil then
		upv4(428232913, 4)
		upv5 = 360773031
		upv6()
	end

	upv3(v5, v6)

	if not nil then
		upv4(428232913, 4)
		upv5 = 360773031
		upv6()
	end

	upv3(n5, v11)

	if not nil then
		upv4("userdata", "suspended")
		upv5 = "Destroy"
		upv6()
	end

	upv3(v11, n7)

	if nil then
		upv3(n7, n8)

		if not nil then
			upv4(428232913, 4)
			upv5 = 360773031
			upv6()
		end
	else
		local v12 = upv4
		local v13 = bit32.bor(n, 2739651353)

		if v10 then
			v12(true, "FromAxis")
			upv5 = 360773031
			upv6()
			upv3(n7, n8)

			if not nil then
				upv4(428232913, 4)
				upv5 = 360773031
				upv6()
			end
		end
	end

	upv3(n8, n9)

	if not nil then
		upv4(428232913, 4)
		upv5 = 360773031
		upv6()
	end

	return n5
end

-- function created 31-th by the script at run time
local function payload_fn_31(arg, arg2)
	local n = 2856792547
	local n2 = 4229085361
	local tbl = {}
	local n3 = buffer.readu8(arg, arg2)
	local v = bit32.bxor(255981056, n)
	local n4

	if nil then
		n4 = arg2 + 1
	else
		local v2 = buffer.readu8(arg, arg2 + 1)

		if nil then
			n3 = (n3 - 128) * 128 + v2
			n4 = arg2 + 2
			n = bit32.bor(n, v) + 4211030528
		else
			local v3 = buffer.readu8(arg, arg2 + 2)

			if nil then
				n3 = n3 - 128 + (v2 - 128) * 128 + v3 * 16384
				n4 = arg2 + 3
				n2 = bit32.band(n2, 1866593792) - 1877866319
			else
				local v4 = buffer.readu8(arg, arg2 + 3)
				n3 = (n3 - 128) * 128 + v2 - 128 + (v3 - 128) * 2097152 + v4 % 128 * 16384 + (v4 - v4 % 128) * 2097152
				n4 = arg2 + 4
			end
		end
	end

	local n5 = n3 - 30089
	local v2 = buffer.readu8(arg, n4)
	local n6 = n4 + 1
	tbl[4] = v2 ~= 0
	local v3 = bit32.bxor(n, 3569729607)
	local v4 = table.create(n5)
	tbl[6] = v4
	local tbl2 = { nil, n5 + 0, 1, nil, 0 }

	while true do
		local v5 = tbl2[3]
		local v6 = tbl2[2]
		local n7 = tbl2[5] + v5
		local flag = v5 <= 0
		local flag2 = not flag
		local flag3 = n7 >= v6
		local flag4 = n7 <= v6

		if flag then
			if flag2 then
				flag3 = flag3 or flag4
			else
				flag4 = flag2
				flag3 = flag3 or flag4
			end
		else
			flag3 = flag

			if flag2 then
				flag3 = flag3 or flag4
			else
				flag3 = flag3 or flag2
			end
		end

		tbl2[5] = n7

		if flag3 then
			local v7 = n7
			local n8 = buffer.readu8(arg, n6)

			if nil then
				n6 += 1
			else
				local v8 = buffer.readu8(arg, n6 + 1)

				if nil then
					n8 = (n8 - 128) * 128 + v8
					n6 += 2
					v = bit32.bxor(bit32.bxor(v, 2828160802), 2828160802)
				else
					local v9 = buffer.readu8(arg, n6 + 2)

					if nil then
						n8 = n8 - 128 + (v8 - 128) * 128 + v9 * 16384
						n6 += 3
					else
						local n9 = (n8 - 128) * 128 + v8 - 128 + (v9 - 128) * 2097152
						local v10 = buffer.readu8(arg, n6 + 3)
						n8 = n9 + v10 % 128 * 16384 + (v10 - v10 % 128) * 2097152
						n6 += 4
						v = bit32.bxor(bit32.bxor(v, 3197762601), 3197762601)
					end
				end
			end

			v4[v7] = n8
			continue
		end

		break
	end

	local n7 = buffer.readu8(arg, n6)
	local n8

	if nil then
		n8 = n6 + 1
	else
		local v5 = buffer.readu8(arg, n6 + 1)

		if nil then
			n7 = (n7 - 128) * 128 + v5
			n8 = n6 + 2
		else
			local v6 = buffer.readu8(arg, n6 + 2)
			local n9

			if nil then
				n9 = n2 + v3
				n7 = n7 - 128 + (v5 - 128) * 128 + v6 * 16384
				n8 = n6 + 3
			else
				local v7 = buffer.readu8(arg, n6 + 3)
				local v8 = bit32.bxor(v, n2)
				n7 = (n7 - 128) * 128 + v5 - 128 + (v6 - 128) * 2097152 + v7 % 128 * 16384 + (v7 - v7 % 128) * 2097152
				local v9 = bit32.bxor(n2, v8)
				n8 = n6 + 4
				v = bit32.bxor(v8, 4229085361)
				n9 = v9 - 712056206
			end

			n2 = bit32.bxor(n9, 2256999140)
		end
	end

	local n9 = buffer.readu8(arg, n8)
	local n10, n11

	if nil then
		n10 = 5
		n11 = n8 + 1
	else
		n10 = 5
		local v5 = buffer.readu8(arg, n8 + 1)

		if nil then
			n9 = (n9 - 128) * 128 + v5
			n11 = n8 + 2
		else
			local v6 = buffer.readu8(arg, n8 + 2)

			if nil then
				n9 = n9 - 128 + (v5 - 128) * 128 + v6 * 16384
				n11 = n8 + 3
				v = bit32.bxor(bit32.bxor(v, 3187685480), 3187685480)
			else
				local v7 = buffer.readu8(arg, n8 + 3)
				n9 = (n9 - 128) * 128 + v5 - 128 + (v6 - 128) * 2097152 + v7 % 128 * 16384 + (v7 - v7 % 128) * 2097152
				n11 = n8 + 4
			end
		end
	end

	local v5 = buffer.create(n9)
	buffer.copy(v5, 0, arg, n11, n9)
	tbl[n10] = v5
	bit32.bxor(n2, v)
	return (luraph_runtime1(tbl, n7, 66))
end

-- function created 32-th by the script at run time
local function payload_fn_32(arg, arg2, arg3, arg4)
	local tbl = {}
	local v = arg
	local v2 = arg2
	local v3 = arg3
	local v4 = arg4
	local n = 3551028757
	local n2 = 1

	while true do
		local n3 = (n2 - 1) * 4 + 1
		tbl[n2 + 4] = v2[n3 + 3] * 16777216 + v2[n3 + 2] * 65536 + v2[n3 + 1] * 256 + v2[n3]

		if q_1 <= 0 then
			if T_1 >= f_1 then
				n2 = T_1
				continue
			end
			break
		else
			if T_1 <= f_1 then
				n2 = T_1
				continue
			end
			break
		end
	end

	local v5, n3

	if q_1 <= 0 then
		if T_1 >= f_1 then
			v5 = T_1

			while true do
				n3 = (v5 - 1) * 4 + 1
				local n4 = v5 + 13
				tbl[n4] = v3[n3 + 3] * 16777216 + v3[n3 + 2] * 65536 + v3[n3 + 1] * 256 + v3[n3]

				if q_1 <= 0 then
					if T_1 >= f_1 then
						v5 = T_1
						continue
					end
					break
				else
					if T_1 <= f_1 then
						v5 = T_1
						continue
					end
					break
				end
			end
		end
	elseif T_1 <= f_1 then
		v5 = T_1

		while true do
			n3 = (v5 - 1) * 4 + 1
			tbl[v5 + 13] = v3[n3 + 3] * 16777216 + v3[n3 + 2] * 65536 + v3[n3 + 1] * 256 + v3[n3]

			if q_1 <= 0 then
				if T_1 >= f_1 then
					v5 = T_1
					continue
				end
				break
			else
				if T_1 <= f_1 then
					v5 = T_1
					continue
				end
				break
			end
		end
	end

	local v6 = v3[13]
	local v7 = buffer.len(v)
	local create = buffer.create
	local v8 = bit32.band(n, 33352649)
	local v9 = create(v7)
	local n4 = 0

	for i = 0, v7 - 1, 64 do
		local exitTo = nil

		while true do
			n4 += 1
			local tbl2 = {}
			local n5 = 1

			while true do
				tbl2[n5] = tbl[n5]

				if q_2 <= 0 then
					if T_2 >= f_2 then
						n5 = T_2
						continue
					end
					break
				else
					if T_2 <= f_2 then
						n5 = T_2
						continue
					end
					break
				end
			end

			upv1(tbl2, v6)
			local n6 = i + 64

			if v7 < n6 then
				n6 = v7
			end

			local n7 = n6 - i
			local v10 = bit32.rshift(n7, 2)
			local n8 = v10 - 1
			local n9 = 0
			local v11, n10, v12, writeu32, v13

			if 1 <= 0 then
				if n9 >= n8 then
					v11 = n9

					while true do
						n10 = i + v11 * 4
						v12 = bit32.band(tbl2[v11 + 1] + tbl[v11 + 1], 2026394763)
						writeu32 = buffer.writeu32
						v13 = bit32.bxor(buffer.readu32(v, n10), v12)
						writeu32(v9, n10, v13)

						if q_2 <= 0 then
							if T_2 >= f_2 then
								v11 = T_2
								continue
							end
							break
						else
							if T_2 <= f_2 then
								v11 = T_2
								continue
							end
							break
						end
					end
				end
			elseif n9 <= n8 then
				v11 = n9

				while true do
					n10 = i + v11 * 4
					v12 = bit32.band(tbl2[v11 + 1] + tbl[v11 + 1], 2026394763)
					writeu32 = buffer.writeu32
					v13 = bit32.bxor(buffer.readu32(v, n10), v12)
					writeu32(v9, n10, v13)

					if q_2 <= 0 then
						if T_2 >= f_2 then
							v11 = T_2
							continue
						end
						break
					else
						if T_2 <= f_2 then
							v11 = T_2
							continue
						end
						break
					end
				end
			end

			local n11 = v10 * 4

			if n11 < n7 then
				local n12 = tbl2[v10 + 1] + tbl[v10 + 1]
				local n13 = n7 - n11 - 1
				local n14 = 0
				local n15, writeu8, v14, v15, v16

				if 1 <= 0 then
					if n14 >= n13 then
						while true do
							n15 = i + n11 + n14
							writeu8 = buffer.writeu8
							v14 = buffer.readu8(v, n15)
							v15 = bit32.band(bit32.rshift(n12, n14 * 8), 255)
							v16 = bit32.bxor(v14, v15)
							writeu8(v9, n15, v16)

							if q_2 <= 0 then
								if T_2 >= f_2 then
									n14 = T_2
									continue
								end
								break
							else
								if T_2 <= f_2 then
									n14 = T_2
									continue
								end
								break
							end
						end
					end
				elseif n14 <= n13 then
					while true do
						n15 = i + n11 + n14
						writeu8 = buffer.writeu8
						v14 = buffer.readu8(v, n15)
						v15 = bit32.band(bit32.rshift(n12, n14 * 8), 255)
						v16 = bit32.bxor(v14, v15)
						writeu8(v9, n15, v16)

						if q_2 <= 0 then
							if T_2 >= f_2 then
								n14 = T_2
								continue
							end
							break
						else
							if T_2 <= f_2 then
								n14 = T_2
								continue
							end
							break
						end
					end
				end

				if q_1 <= 0 then
					if T_1 >= f_1 then
						i = T_1
						continue
					end
				elseif T_1 <= f_1 then
					i = T_1
					continue
				end
			else
				exitTo = 1
				break
			end

			break
		end

		if exitTo == 1 then
			continue
		end
		break
	end

	return (upv2(v9, v4))
end

-- function created 33-th by the script at run time
local function payload_fn_33()
	error("devirt: bit32.rshift failed: invalid literal for int() with base 10: b'status' (at 202:335)")
end

-- function created 34-th by the script at run time
local function payload_fn_34(arg, arg2, arg3, arg4)
	if nil then
		return (upv1(arg2, arg, arg3, arg4))
	end
	return nil
end

-- function created 35-th by the script at run time
local function payload_fn_35(arg, arg2, arg3, arg4, arg5, arg6, arg7)
	if nil then
		local tbl = {}
		local str

		if nil then
			str = "Frame"
			upv3 = bit32.bxor(upv3, 3412125107)
		else
			str = 2
		end

		local n = arg6 % 67108864
		local n2 = (arg6 - n) / 67108864
		local n3 = 67108864
		local tbl2 = { 4, nil, 0, nil, 1 }

		while true do
			local v = tbl2[5]
			local v2 = tbl2[1]
			local n4 = tbl2[3] + v
			local flag = v <= 0
			local flag2 = not flag
			local flag3 = n4 >= v2
			local flag4 = n4 <= v2

			if flag then
				if flag2 then
					flag3 = flag3 or flag4
				else
					flag4 = flag2
					flag3 = flag3 or flag4
				end
			else
				flag3 = flag

				if flag2 then
					flag3 = flag3 or flag4
				else
					flag3 = flag3 or flag2
				end
			end

			tbl2[3] = n4

			if flag3 then
				local n5 = arg % 65536

				if nil then
					n5 += 65536
				end

				if nil then
					n5 -= 65536
				end

				arg = (arg - n5) / 65536
				local n6 = (arg5 + n5) % str
				local n7 = n6 % n3
				arg5 = ((((n6 - n7) / n3 * n + n7 * n2) % n3 * n3 + n7 * n) % str + arg7) % str
				continue
			end

			break
		end

		error("devirt: arith on b'Scale' b'nfdnormalize' (at 42:322)")
	end

	return nil
end

-- function created 38-th by the script at run time
local function payload_fn_38()
	local n = 3967414589
	local n2 = 3156675214
	local n3 = 56865907
	local handlers = {}
	local tbl = {}
	local n4 = 0

	while true do
		handlers[-6796] = string.char(n4)
		tbl[n4] = handlers[-6796]
		tbl[handlers[-6796]] = n4

		if q_1 <= 0 then
			if T_1 >= f_1 then
				n4 = T_1
				continue
			end
			break
		else
			if T_1 <= f_1 then
				n4 = T_1
				continue
			end
			break
		end
	end

	local tbl2 = {
		[44496277] = "static_content_170926",
		[53288373] = "_bsdata0",
		[81993543] = "sub",
		[30275254] = "table",
		[68205488] = "char",
		[98164175] = "superflow_bytecode",
		[41224691] = "string",
		[50507086] = 573653891,
		[72183941] = 1,
		[77681210] = 0,
		[55766840] = 255,
	}

	tbl2[63428053] = "type"
	local v = table.pack(bit32.band(n2, 4294967295))
	local v2 = table.pack(bit32.band(v[1], 65535))
	local v3 = bit32.band(v2[1] * 45033 + bit32.lshift(bit32.band(v2[1] * 0 + bit32.rshift(v[1], 16) * 45033, 65535), 16), 4294967295)
	tbl2[63876787] = 362878302
	local env = getfenv()
	handlers[7113] = {}
	local v4 = bit32.bxor(n3, v3)
	handlers[-4847] = env[tbl2[41224691]][tbl2[68205488]]
	local n5 = n + 569510107
	handlers[-6467] = env[tbl2[41224691]][tbl2[81993543]]
	local v5

	if q_1 <= 0 then
		if T_1 >= f_1 then
			v5 = T_1

			while true do
				handlers[7113][v5] = handlers[-4847](v5)
				handlers[7113][handlers[7113][v5]] = v5

				if q_1 <= 0 then
					if T_1 >= f_1 then
						v5 = T_1
						continue
					end
					break
				else
					if T_1 <= f_1 then
						v5 = T_1
						continue
					end
					break
				end
			end
		end
	elseif T_1 <= f_1 then
		v5 = T_1

		while true do
			handlers[7113][v5] = handlers[-4847](v5)
			handlers[7113][handlers[7113][v5]] = v5

			if q_1 <= 0 then
				if T_1 >= f_1 then
					v5 = T_1
					continue
				end
				break
			else
				if T_1 <= f_1 then
					v5 = T_1
					continue
				end
				break
			end
		end
	end

	if env[tbl2[53288373]] then
		local v6 = tbl2[30275254]

		if env[tbl2[63428053]](env[tbl2[53288373]]) == v6 then
			handlers[-6626] = tbl2[44496277]
			handlers[6105] = "d049a886a1f-ocmid"
			handlers[-902] = nil
			handlers[-918] = nil
			handlers[851.77] = nil
			local v7 = table.pack(bit32.band(v3, 4294967295))
			local v8 = table.pack(bit32.band(v4, 4294967295))
			local v9 = table.pack(bit32.band(v7[1], 65535))
			local v10 = table.pack(bit32.rshift(v7[1], 16))
			local v11 = table.pack(bit32.band(v8[1], 65535))
			local v12 = bit32.band(v9[1] * v11[1] + bit32.lshift(bit32.band(v9[1] * bit32.rshift(v8[1], 16) + v10[1] * v11[1], 65535), 16), 4294967295)
			local n6 = 68246
			local n7 = 68246

			local function fn(arg)
				handlers[-902] = tbl2[63876787]
			end

			fn(523981619)
			luraph_runtime3(table.pack(handlers), nil)()
			local n8 = 85048
			local n9 = 33263

			local function fn2(arg)
				local n10 = n9 * n8 % 81419 + 9951
				local n11 = n9 * n9 % 24389 + 19374
				local n12 = n10 * n11 % 67874 + 63350
				local n13 = n11 * n11 % 54943 + 16733
				local n14 = n13 * n12 % 46411 + 2337
				handlers[((n10 * (n9 * n8 % 52037 + 6825) % 11559 + 64329) * n13 % 70994 - 23270) * n14 % 29623 - 14032 + 0.77] = tbl2[50507086]
			end

			fn2(509894118)

			local tbl3 = {
				handlers[-902],
				handlers[-918],
				handlers[851.77],
				97092,
				5735,
				20690,
				97365,
				90542,
				63644,
				35716,
				95819,
				35524,
				11589,
				23213,
				1445,
				42732,
				32971,
			}

			local n10 = (tbl3[4] + tbl3[1] + tbl3[9] + tbl3[12] + tbl3[13] + tbl3[6] + tbl3[14] + tbl3[7] + tbl3[2] + tbl3[16] + tbl3[17] + tbl3[5] + tbl3[11] + tbl3[10] + tbl3[8] + tbl3[3] + tbl3[15]) % 100003
			local n11 = 2351 * tbl3[16]
			bit32.bxor(bit32.bxor(v4, v12), v12)
			error("devirt: unexplored successor 42:57003")
		end
	end

	game:GetService("Players").LocalPlayer:Kick("This script is for Luarmor V4 loader wrapper. It does not work without a loadstring. Do not run this file directly.")
	error("devirt: index b'\\x04\\x00Cc\\x05c' (at 125:57303)")
end

-- function created 41-th by the script at run time
local function payload_fn_41()
	local v = upv3[5069]
	local v2 = upv3[-3777]

	loadstring([[local t,r=...spawn(function()while wait()do pcall(function()local g=game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ErrorPrompt;g.TitleFrame.ErrorTitle.Text=t;
g.MessageArea.ErrorFrame.ErrorMessage.Text=r end)end end)game:GetService("Players").LocalPlayer:Kick(r)
        ]])(v, v2)

	while upv3[-8382]() do
	end
end

-- function created 42-th by the script at run time
local function payload_fn_42()
	if upv3[39158] then
		if upv4 then
		end

		return
	end

	if upv3[nil --[[ constant not decoded ]]] then
		upv3[nil --[[ constant not decoded ]]] = nil
		upv3[0.81](upv3[749364310], upv4[0.29])
		return
	end
end

-- function created 43-th by the script at run time
local function payload_fn_43()
	error("devirt: builtin buffer.writeu32 on symbolic values (at 57:10)")
end

-- function created 44-th by the script at run time
local function payload_fn_44(arg)
	local n = 9
	local n2 = nil
	local n3 = nil
	local n4 = nil
	local n5 = nil
	local n6 = nil
	local n7 = nil
	local tbl = nil

	while true do
		if n < upv1[9] - 27961 then
			if upv1[6] - 70168 < n then
				if not (upv1[10] - 43316 < n) then
					n = n4 * n4 % 36539 - 12779
					n6 = n7 * n7 % 47010 + 44773
					if n >= 0 then
						continue
					end
					return
				end

				if upv1[2] - 82383 <= n then
					if n ~= upv1[8] - 75654 then
						n3 = n2 * n2 % 41174 + 64905
						n = n4 * n5 % 62571 - 18238
						if n >= 0 then
							continue
						end
						return
					end

					n = n6 * n7 % 88937 - 43289

					if tbl[n7 * n5 % 63335 - 4721] then
						local v = upv3[n5 * n7 % 27276 + 56]
						if upv2[-(n7 * n5 % 42114 - 5704 + 5)](tbl[n5 * n6 % 27910 + 5399]) ~= v then
							return nil
						end

						if n >= 0 then
							continue
						end
						return
					end

					return nil
				end
			else
				if n <= upv1[8] - 75657 then
					return tbl[n4 * n7 % 72598 - 37338]
				end
				n = n4 * n2 % 78536 - 15484
				if not tbl[n4 * n6 % 81917 - 5723] then
					return nil
				end

				if tbl[n7 * n5 % 56189 - 37870] == 0.63 then
					return nil
				end
			end
		elseif upv1[1] - 26486 <= n then
			if n < upv1[6] - 70161 then
				tbl[1314] = tbl[7308][835.11](tbl[7308], 65447) ~= nil
				n = n4 * n4 % 16067 - 11568
				if n >= 0 then
					continue
				end
				return
			end

			if upv1[8] - 75653 <= n then
				if n ~= upv1[8] - 75649 then
					n6 = upv4 * upv5 % 86947 + 22609
					n7 = upv5 * upv5 % 97290 - 14594
					n5 = upv4 * upv4 % 98361 + 74032
					tbl = { [n6 * n6 % 36151 - 26618] = arg }
					n = n5 * n5 % 22415 - 18563
				else
					n2 = n6 * n7 % 70196 - 7139
					tbl[n4 * n6 % 21549 + 85] = tbl[n5 * n2 % 25328 - 1329][0.76](tbl[n5 * n2 % 25328 - 1329], upv2[n2 * n4 % 93532 - 76221] .. -6815 .. upv2[n2 * n7 % 44385 - 43185 + 29049])
					n = n4 * n4 % 62396 - 43575
				end

				if n >= 0 then
					continue
				end
				return
			end
		else
			if n < upv1[6] - 70163 then
				n4 = n7 * n6 % 60617 + 32683
				n = n6 * n6 % 34095 - 17888
				if n >= 0 then
					continue
				end
				return
			end

			n = n3 * n2 % 69207 - 59007
			if not tbl[n4 * n3 % 53977 - 22558] then
				break
			end
		end

		if n >= 0 then
			continue
		end
		return
	end

	return nil
end

-- function created 45-th by the script at run time
local function payload_fn_45()
	local n = upv6 + 179144060
	local exitTo2 = nil
	local exitTo

	while true do
		n = n == 529394337
		local exitTo3 = nil

		while true do
			exitTo = nil

			while true do
				if q_0 <= 0 then
					if T_0 >= f_0 then
						exitTo = 2
						break
					end
				elseif T_0 <= f_0 then
					exitTo = 1
					break
				end

				if q_0 <= 0 then
					if T_0 >= f_0 then
						exitTo = 4
						break
					end
				elseif T_0 <= f_0 then
					exitTo = 3
					break
				end

				if q_0 <= 0 then
					if not (T_0 >= f_0) then
						exitTo = 5
						break
					end
				elseif not (T_0 <= f_0) then
					exitTo = 5
					break
				end

				if q_0 <= 0 then
					if not (T_0 >= f_0) then
						exitTo = 6
						break
					end
				elseif not (T_0 <= f_0) then
					exitTo = 6
					break
				end

				if q_0 <= 0 then
					if not (T_0 >= f_0) then
						exitTo = 7
						break
					end
				elseif not (T_0 <= f_0) then
					exitTo = 7
					break
				end
			end

			if exitTo == 1 then
				if q_0 <= 0 then
					if T_0 >= f_0 then
						n = n == 529394337
						continue
					else
						exitTo3 = 2
						break
					end
				elseif T_0 <= f_0 then
					n = n == 529394337
					continue
				else
					exitTo3 = 2
					break
				end
			elseif exitTo == 2 then
				if q_0 <= 0 then
					if T_0 >= f_0 then
						n = n == 529394337
						continue
					else
						exitTo3 = 1
						break
					end
				elseif T_0 <= f_0 then
					n = n == 529394337
					continue
				else
					exitTo3 = 1
					break
				end
			end

			break
		end

		if exitTo3 == 1 then
			exitTo2 = 5
			break
		elseif exitTo3 == 2 then
			exitTo2 = 5
			break
		elseif exitTo == 3 then
			exitTo2 = 1
			break
		elseif exitTo == 4 then
			exitTo2 = 2
			break
		elseif exitTo == 5 then
			exitTo2 = 3
			break
		elseif exitTo == 6 then
			exitTo2 = 4
			break
		elseif exitTo ~= 7 then
			if q_0 <= 0 then
				if T_0 >= f_0 then
					continue
				else
					exitTo2 = 5
					break
				end
			elseif T_0 <= f_0 then
				continue
			else
				exitTo2 = 5
				break
			end
		end

		break
	end

	if exitTo2 ~= 1 then
		if exitTo2 ~= 2 then
			if exitTo2 == 3 then
				error("devirt: compare None 43 (at 57:221764904)")
			end

			if exitTo2 == 4 then
				return
			end

			if exitTo2 == 5 then
				error("devirt: corrupt/encrypted register store 5744 (at 57:15)")
			end

			if q_0 <= 0 then
				if T_0 >= f_0 then
					error("devirt: compare None 43 (at 57:123677490)")
				end
			elseif T_0 <= f_0 then
				error("devirt: compare None 43 (at 57:123677490)")
			end

			error("devirt: compare None 43 (at 57:91346)")
		end
	end

	if q_0 <= 0 then
		if T_0 >= f_0 then
			return
		end
	elseif T_0 <= f_0 then
		return
	end

	error("devirt: bit32.bxor failed: int() argument must be a string, a bytes-like object or a real number, not 'NoneType' (at 57:44)")
end

-- function created 46-th by the script at run time
local function payload_fn_46(arg)
	local n = 1
	local n2 = nil
	local n3 = nil
	local n4 = nil
	local tbl = nil
	local v = nil

	while true do
		if n <= upv1[11] - 97047 then
			if n < upv1[2] - 82380 then
				n = n2 * n3 % 43604 - 37456
				if n >= 0 then
					continue
				end
				return
			end

			n2 = upv2 * upv2 % 90223 + 60812
			n3 = upv2 * upv2 % 83324 - 36583
			n4 = upv3 * upv3 % 62336 + 37788
			tbl = { [n3 * n3 % 87789 - 15778] = arg }
			v = getfenv()[0.96]()
			n = n2 * n4 % 52105 - 21827
			if n >= 0 then
				continue
			end
			return
		else
			if upv1[11] - 97050 <= n then
				if n ~= upv1[12] - 80117 then
					n = n4 * n3 % 24210 - 14586
					v[upv4[42546]] = nil
					if n >= 0 then
						continue
					end
					return
				end

				break
			end

			if n >= 0 then
				continue
			end
			return
		end
	end

	luraph_runtime4(tbl[3528], "%2", {
		[13190] = 62662,
		[-3885] = 3537178642,
		[0.51] = 1946222612,
		[15843] = 236,
		[-2131] = 59,
		[nil --[[ constant not decoded ]]] = nil --[[ constant not decoded ]],
		[60473] = { 5, 3, 4720, 28, 2, 4720, 50, 2, 4720, 30, 2, 4720, 63, 2, 4720, 4, 2, 4720 },
		[4407] = -4035,
		[luraph_runtime5] = 10,
		[-5526] = 62611,
		[7628] = -5526,
		sub = luraph_runtime6,
		[13313] = 968512423,
		[nil --[[ constant not decoded ]]] = -325.83,
		["d049a886a1f-ocmid"] = buffer.fromstring("H\163\244L*\209x\245\140ųw:\24\147\233\193}M\207lN\172\135\143\167#A\16L\205\2542Q\29\167BS\165uD-\232\14\209\15\166\132\149w\127\141\196>\19\146Q\231C%\11_'\133ƚm$\165\204%\233\0\191OT\185\156OCa5P\134wf\241;=m\159*\255\225@\187q\148\191b\204 \241X^\152\227\187\31(\242J\234\195\232\190\225\153\220\243\141\219V\254\175\138\21\159r\181m-Х{\154&\240Q6?߂\234l\204\25\196\207Vnܪ\198_\6\254#i\230\18L\147ؾ͛\8\28Sv\15Բȵ\212#G\174\188\r\228Z\234R.v\236+\130\159*d\3\255^\2272\195bBV\240\203\208)\18\0!HC+{@\242\163ްlrGu<\6Vz\246\216b˔\229\28ڔ-\23\12\2128\134\173M\171\247C\196WOxA\178\193\1\\kʰ\191\142\174/X\179\191\16\205\235\239y\207\219\249\200@\229\210}\201Y\251\134S\232\24\127ᙎ\248V\255D\213\30b\249\225\168(\175\n\134r\184\187\23c\196P\167:\235b$\252Y\172\16\210i\168\253\171l@\1*g\178\127\198\208s\200\242\20\226j\255\155\28\137LD'\187Xb\161\128-\166I\253\0215\141!2\140BT\141\178\167\1800\30\219\6\14\201\250Y\155\128ί\217Ұ\\i\128TT\181F\184\198\28\28\178l\"\192.^\146g\251\160W\152\6\196\244\154\211]\239\21K\155\t\164\183\252\178+b\16\0163\rV\30#4\217\4\160iV\230\220\205\218[h\181\239k\1281\174\240\131\191Yſ\144W\156\195w\1998fu7\133\12\220Z_\16;\195\212T\214\14\243G\203?\181\23\18Ar\144u\223\225\212\213ͪH䫹\224(\163*\135In\0047\22\159\237?1\195\27![\165\247\26\127\191\238\183/\22\142H\208\5\18L\186\179\202E\252\1608A\187\222]\159\250\0\160\145\230^܌\228\27\170\3\8\136[\160Nb\16]\152\188\179\223}\249\225.\200\225\185)PEL\213>\177\1837G:\250\249\247{t\167\170\166\3Ė\4Ԋ\227|(\131i\213G\172\186\146Ͽ\146|h\167ځx>\230\201.\15\170\132\176\24\8\212\1q`@\u{58B}\139\158\148^\27\187\2354S\1297o\170\151S\235\162\24\7\223\197rl\129\230^\\ܳ\171q F\136\251@\189^\21356\127,d\152\134\204\4\21|\224\130\131\239}\218\1F1:\204\239@\2\168\210\252\183n\143\222J\209\236\157s&/\133lMZx^\195=\169|\214`\177\167-\4\249ZR\201Z\3\177o\194r\253\127\168u\1633\140\208\208 \225%\nz\23\159J\237\140;;\156\167@\198ƀ\214x\251\7\147\155\16\214\239\8\212\28\0t\189\158\0\173\12\135\174\27@\181\222dB\151h\191ĠD\16 \220\194I\176. \161\144\207\221X\151%\171\246C.;\168K\222])\221C\189\26FL<)ͯ\243֙\17\232\250]\238\241\176\155\207}|\143\1880Z\25\\!\184\137\223\240\208\"!\212j\18B2\199A\255^\158a\233?\214%\178\243D?\211\255\137$\212Y`\148\203\2\243\184\229Ղ\200Mzy\u{9D}J\218\19W\187\193yǄ\134\173Z\208\26@\19\1484yqN\2161\1782u\19ԭ\135\253\195e\191(\251\24\134\225\252Q\201}\184\227\191\247\148\253E\0;\"\24\178\\\201\31z\129\\\188\218G\155\8\243\"\253:Wc\178\170t\182/2\155d\25\240a+b\253\154\138\191R̛8\197\236\170(5\222\248(H\\&`\26)\248)\223Ǫ'\192\219\7\236\0g\19A\6\127\207\"\25&\137@\232\247\165\185j+\236f\220\0\141E\201zL\230aT)\219\6\196\198\242\193\182\144\167\16\nPq\190<\27\176ٙ f>\159[\173\254\24\180?\157\222hkz\133\153`0=,\150v\224\u{5F6}\244o`n\127\160\217{}a\\\190\246\162\194V\164\227\235H\140X\211|^\180J\181\243|G\1wl\167k\3\136\161\157p\221~\31\217Ƨ?\136\142\145\17\199V\154\141\0\243\\\250t\214C\150\168\166\149z\2444\182\130\12j\29m%ts\153|f\230\27\246\166\145\27\188\16\140\232췀\155{\212a\218\tΏ\136\133n|\212%$\217\205\253\21\1\230\23r\143ӱ\209۸m\192\175S\207aa\3\184\6\186Q\187\200\2\6C\"\245\135\136\201CN\203]\200)s?\29\147\154\245e\250\241\236^\247\170<\206\15\144\165\161\227\234\153Q;\199ܡ\251#\135\139#:\1371\195S\224\219m\163\21\165\128\208#g xٝ\182H\127Օz\1634\176\155˵\179c\175!'\1484\3\1572/\186I?7\22y혒\210r\196\222\28b\213.m\184lW\31\239\190˙\161\206_'\3\220\8;B\2\207\17\185\140\192VT]B\191\148\171gvd\232\228\236\169`\218\127P8\183\235W\2032cT\212\27Y_\18\213\28\237,Xz\216\237b\177\148Q->km\157?\138=o\149\146\163\"|Cu\30\173Ҕ\185bf\134י\27\183\3~6\225\241ɱ\138\236su\152\153RpáL\249\187n\139\137\190\220_\14\208\235I3\180v\144\197I\198\250\30\6\212D\218\2517\205\250U\239\2429\164\253\181\187\224d<\207\248\211ԟ\168L\28\142\196r[\133Ԯ,Q\31\128Qɿ\231^\21\225o&g:\0297y\141\237\249O\0239\132\151\11O\231\146C\0\148\232UV\144\4\18췿\0193\155\248\165\165u\148&\128\191\131\212Wh\131\241\28\215\218O&\175\166\155|\138\5\135\2248\24\238|\146i\238\2086&7\183\229\199Y\147\233]\7\140\183\182\251@\251\137n\186\180O\147\161˞75\201\14\250\159\253A\165\246\25\215\7p\5\0290\133⏦\171\250{[[)\198\192\164\r\241\11鷜\247\254\139\211\30h{\\\12\159艻eA[6ur\206\6\165\157f\199\250\202;[\239r\224\246\254l\190\6\163r\136.\166P\14\223\229\239\176\16\n\147\233a\181М\148\2304\212K\169\0006,\237\30r<\208v=\154W\n×\132^9\185rH\127\185\151\130\143\232\11X\"\156\185?i\164ObP1\236\253\154m\221ԅ\180pPe\240Xַg\157S\228\205`\198a\155\159ԇ$\228n\219\214=x\209Ƙ\11\2284Ժ\12\171A0\163\244\6\188\223@\229t\19+\157\253\3|Z{\140\167\134\190z\128\24J\233:P:I\164\244M\151\250\220P\173\229\224Ƽ\26\1\16I\221+.F&\236\127\253\247@\132F\252'\146\171\168e\239\194í\31\254\2\203)j}Q\244J\240\24171\180\214i\247e4\1784\27a\225 \172\25\127\134\128\rHAj\237\134n\244\227\166\221\239q\24\248\20865\24m\247\232\146YL)\16\153\184\201p4\224\r\225\1691\25\163Eg68\222\217mD\136\193k\18\247\128ɟ\224DKE`\166B\2413\27\188\202\198[\203Mg\179\214V\142w\1840\30\172V\229\128p)\228\220T\139e/\152\255g\160X\134\194uI\195\2302\252\167\159\154\241K\207\227\228\175/\234R\154\168\6t\169\18\2506 c\225\213\7\198\\i\158\187\131\207\234\210~mIQ;S}Z\12&Ƀ\178\156\172\2079\4eFb̨\23\136>\255U-\176N\130E]|\135\242\185\"\159\142\236\224oEo+B7\12N\131w\131)sz^y\r5).\173\240\190U\175\246I\0\218\14\162\161\28\195\230[\129\1874\161\0116\166!\214\208\4B\211\11\171Od\224\145U?\160Dm\240\163\172\\\187\219\19\190)/\2s\24\21\1413j\21;>V\179\2106\242\16\17\207hz\227][\129\235\141{\202\21^\4S污\253\233gE\230\222D\136\168[ۦ\234\129\219co.\221\255/\252\239\159\192_\149\228ٴ\233{\161I\137\248\222u\145\141\135\6\232\144\193\214\230\177X\215#\233&\190.\152\25\231\3\253Jz\209\2468\131\131 \202۰\15x\245#B\248m\172\173\244\165\1\168O\16$c\2415\194\20$?\14ļ\128\155\176\170\137\169.\191\n\218xOe<\196֙\0232+y\181 ]\3؇\19\246)\155=\27\19\t\239۾T\1833\251v\24yCY\209%C\180\155\\\249\7@u?A\128\174\14a\161+\8\15\160\230A\229X\20F\27;Y\238\216!C\235i\2322\\\2222P\28\27\186\250$9\31\218f^\149f~Q\127\181\155$\16\217\2249\146D\230\23\231j\205\193i?\212\244\175Q\129\255\237Ww\150\0240\188\16l)\174\221O\180\229\136MfԠ\251\24\213\209\193\2\n&\130#\227\20\27\11\189pW\158O\248\134\26\22Ŋ\16\163\184~,~\185\211\249$4\5M\129\186\193\r[\134\134\204\193\168Bf\132\174C\252\248e|\191\0\133\243\170\162\248EW\5\203\14 :]\26\200\249\145\\\r3d!C\16\28\1\212\16\179x6\179Z\20\23>>\244\229kc\253\30K\222ڿ\15oqX2\213\224^\2108y\2348sm\159oVֺpd$\232\240\188B\2264\250\153\143\224a\135\175ƛJvs\133\248:*\165\211?\233\1836\241ɠjs/i\189O\"\138\1\143\177J\t\1785\1298ʎ\179Z\7Jѥ\229\17'\178\168\168\17p\r\248\248\131+\30\153;\168\192\151\164\11\239\191\232\23\228\25G\134\20\2h\23#\191V\2414\6\254\189ʚ\149:\167n\202e Q\236\4\189\131\235&\14P\178\\$\135\179\193\20lO0~\228A#\160rUu \156\253\231\188\205T\4\255~\133\214\226)=\175>\205^\230\199Sp\190'\7+S\179N&\235\219]o\240\237\12\251\240\141k\127\240Ĭ\139\14\202\214\197~U\31/dp^\234\229]{\164߈\192Mws\139\143\162h\30Z8%\156\210\20)\220\194$a\167U\30\21}6\232tד\254\29\225đn纱\23\156B\5v\\cŷүV\153\2499\147\0128\30\184\220oq\20\209y\185<\183\146O4\14J\183h/\230\232\22Q\12\202A\21ќ\234\140^KP,\"\20`S \19\29\136\18\219\5'\161\195!\163\r\162!\247ݾ\250\182\131\146r\141\157\12\231K\226\230\164\6\152\128\132\223\213p\178iHne\251(\127L&\148\156SMed7\4\179'\167*\22\8B\0[ }!Zq\222P7\26|V\143\214.\127J/,\28\22\246\133\229\234\139\16Cح\153\173 \152(\234B\129\3{\156օ\255[e\4%Q\22r\202z5]\180ZW\139\167\167\248\129W\189\242QŘf\20b\129y2\203\29\193J~\174o\232\246\31\220\255?\203\222=\183ۉD\r\238l:\5G\183\30\244\14\151\137\133\17\129>\236\0279i\0\31\246\197\192ǹ\182\161\131聯~\248\237=\u{7B9}\224Փ%\182\208\22k\174J0w\213\tS&\4\8R\28q\158Е\197\242\161\246WX\250\133.\n\"\188\165\167M_\5\164\246\146\253\2D\2509\11\17u\2555\226\253˾\230\2058\239\170\26\247g\r\145\203m\173wY\30k\1491\21#\165ilLp\207ޓ\253\143\196\240\167\171-\17&\245h\n\251\\\240B\175c왣\233\169\203\245\150*-\231U\144\219=I\154Vw\180\2145\233'\245\156A\178\0\158\253\242Ř[\28\138f\164\219\226\138\201f\237\252\"\204$$\187Ib\136\175\244\175,\200\31\220\"\241\236\191\28a\140]p\253[\160\154\229\140\2007\25\141|\227\190p\15d\230\230gk\137\168\139Q1\140\170>$!n\189\166bg\27\213$8!\15{\208\202[\161\0073D\1`69\181\180\18mMê\238\172v\7\180\219\253\192\173\2\0252O\20\162Aǲp\168ڀ\178#\153\27\167\16\178}NN\174\179\211Y\253\167S!\245Iݮ\132\14\136\165\201\212\2\164\1735'\\\169\4:\2Y>3\29\18F\244\31\204\238\18BOf\208\17\11\129'=4\168I\182\155\220^;S(\162b\191\128\176\158\2235(\4\139\"!J=3\173\3J\163\190{C/\0281\155\0188~\\XA|β\210d]H\29\30K\134H\134Y\206\242\224\241\243\128\28\31\217\8\252\172$\133\164\180\170Fu\209vu\180\213\u{63452}\16&'z\248\240\139\235̋\00652\133\224+\12ej\25j\165gb\159\2411\248t\25\161\3\192\201\2000\216\253K\137\169\127=b*(\170i \163'/\1945\193[\202\233\0\187A\235\0224N\254\250\241Z\221w\169BEvܻ\5\162݉\199%\134\226\143㈶\22(\252f\211,k\132\189 й\1461K\138\242{ѯ`\249\229T\192\147J\165sx{\162\193\249\234v\225\228\165\t\234\27;m\2F\143\254\227\213+\186\14\184\135\4\\R_ 3\21\186\199]\241́\159\193/\147\195w[\146\t\26K\212\raM\158\165\20\17kQ\192\202\197R#B\t\27\179\181\172\233\145Md\188\212Z\187\160e\198n/\20\241Nmu\196P\245\155`ڡ\197\237\148\239\147F\150t\252\0228\147s(\164\1\2\227b\252\178\188גb[\193.0 \250\25\14b\253Nþ;\230\226\r\170#b\138\148\246\152\162d~f\1\215\29W\218\224o\198δ\137\140\154\255\150\183PgN1̏9\24,go\152\166=\26\244n\169H\179PkB\r}\148\183\141\193|\174\130R\168$\220\0202\242\186\16I\255\r\162H\228\250\152\240\167\\\137\6\196\230>R\163\1388\147\11ҫ\28P;\21e/cA\128訥L\149\6\202\18C\192hŜ\11\127\28>\227sI҆\155\1777\1588\30e\229^\157>\235iB>\255\210\\_R\157\176\175\18G\150\181\244/ɪ\7\175\130\160ư\240\190\196\12\231\179\252\217\205\2%\142j\199\\\1612\226,\215͉f\181\138\232\129W\246\7\1893\153Z\237\197dۨI\28\\\139\2109\7-Y\153\200\251u\165\230\147\218oV\175\245W\252\181\1961\151\146\164\152ȉp\198߳\242\161:;>\248wr\r;\232M\149\137\8\218'\187\202\216{v\253?\176ah\219o9\165\162\179D놧j\247\198_dߙ\134\189N\156\127n\213oK\213\24\189\0065\251\215J\242mgi\192\215\28\227]\167\230]\202_R\216\28v\219;}ƀfP<\227o\131\150\186\192\231T9ûoJ\156\193\140\197\0\1-R\156\199\246\236)\248\142\220e\242\140\242wv\234w\169\24\127\161\244\230Hl\205Fz#\141\167\4\210W\4\245\245)FI\216\\\153\253ڈ{u\185\30b\185\25>\255\2406\186\251\149\174\143\152\211;\12\1795\140\138׀ĉa\141\171\136̑M\195\1\173G\137\180qI\232\2217\229\16\134μ\178R-\127\247\4\nV7\"\t\150B-_\236\231k\213\5I\21(\147\255\191DU\194\228\219j\172E\129\219\200\r\224\136\216\230\127{*\28\31\174$a\183\2453+U+\4\127_\181@UhƁTY\186\23\127\173ë5\254\171\1*\247\0\239v$B\4\5\140e\180\215x\0E\154\236\151\2\180\r\135\151\229$\r\247\241\230.\225\r\12C\28\15\16)\190\1481h\6-\234gW\8\21X\251AQ\0140\227]\26\5\231ɞ\210i\7\139\20\3\245ˈ\143Q\213\255\134\n\144\203\248\251\227\231~\3\192\202\251\239·\166\237\28\247\247#\228\202\198\7\254b#\220/\220Ǎ]S\172uŻʂ\27\189\"\182#YMc\218\1973\174Ǔ\152\20\238rj\174~7\150\253[\28\213R4\220@\152\239\1\229\168$\177v\160q\246\238\214\225\240\235 hf\195\249q*n\193ӯ(\193\181\1795\226~\233\216|\127\238]T<}\195T\31\201\26mf\21\185=C\30zq\179\252y\236\18)fU\14\1900\137\199\235\201B^\173C\187\148Jy\190\229?\227>\140F5\227@\1\218\221H\212\248\252&\150\242]\21\17\227\254\2121\152\26\197)\246A\134\153\181\8:\175Iw\154\31\178%\166\220\234\170\240\168\189\241\215(o\20\14\"ɭ\183\200M6/v\202M*\22\3Ru\23\151\145\184\135\1\233\246G\216\234^S\150\0046a\12\131\207\245)\229c\176\172\t4H\181$V\213\224c8K:\127x\253\152\219}\24\156S\15\229uq,V\1858C5\252o;Kt҉\128\12\202WJz2PV\219\18\176u\173?\238Z\1299\216uL\150\130z]æ\131\252\195\242:\30\133ԲR\"\18\148\143\144̍\226\31\5[B\30LY\7?\8C\171-'\158\142n\228\28_ڤ\31K|i\170\188\158\27\175\6\252i\245(]x\197\0023`ت\246,\228\139N\166WC]\191\230fS\169\130\130a\179;\187/\147\220\234\252@\236\204p\158\163\175\138{\238-űA\161\225\r\0\234\239E9\147}zUy(_\235\172\211\197|)\1518\27G\179<Z\219\247\213\255\188hU\12=p\1736\173\224\215\8\134\172@\204Z\4-\221\229\216-\166\1872\196\214\239AL!\243\187\2\213\215\211X\19pg\254\173g1\22|\n\221:\181\249̥;\174\186\248\207t\187K\243\1\136\154\14\226\18\221/G\27\239Y\19V\238\146x\249)-\167\212V\143Z\151\216\237\187'\185\21\164:\178\1!\206E04\206\2\189\167\206K\22\205&8jO\2U4\185\168\148\219\220~Ը\133\129\19\246\1808\27\7F\247\22\233F\5\2363\135\17R\188\240Q\141o\155\26\147\229 \206\201\211A\171O\250'l\133\1375\154\17\188x\183=>\247\137\221«\197\221\4\213\217\234\194\0\138ы\153\234!\151\147\242\27W\30ɼ\17\237\2047\236G\11\229ДoC6\234+L\12f\142\12`\192o\1286\133m]\237\171\177/\14\182<\23x\22&\155'\14944\148?\186\155co\27\239C\205BN\1\202\2485(\222>U\178F\200#|\158\"\232\227\160O'\218\246\173\163-\199\"כ\162y\185\7\209<{\216\127\197\25Y\2353\2323\158\255@Q\238\135\19\206B\180{\129\190EH\243\189C\252\171\28h[\130|\230\200ȧ\205\210\238^ʭ\163[\tsx\220\206\30V\222C-k{\206\5\145\169T\192\8\245\234힛HKH\216\0014\191Z\210j%\255H\206\254ωh6,\27\217\220r\16\228\0˔\160$NF\240\252\7\187\26\194]\206\228\199\198i\144[\177Y6\128\239\0239W4xaϳ\246@\164\143Q\4\201\215\194Ikw\241\157\31\148o\234\251\214W\0080\200\216aw\158\2\1984\195\242 \197\252K\"&\241><\221\233\178\\ӌ\183\164\231i\143sAw\149\163\18\135\20\132\25\228v|\129\1\239\156C}\2247\184U\142\130\207\225n'X\245j\0187\234\171\208\27\235\186\249\176\239\250\157\5\230\146F\172\127\149~\148\0x\152\12v\161\132\209*\245\202\193<\rD\134\1364M\136\19ɳ\4\14\236\31`{k\178\1597H\177۹\31~\18\237\134j\155\254\211\192\224x\200pT\236WY\250\"k{\166\142\0\159\214\249\236Xh\207F \14%\201\29\210\193\127\24\168\157\168m\254(\250h\212}\203:\134\227'\250\148\162\169\176\156qq7\29TU\251\192\u{5FA}9\n)e\11s\2277\243\23\141\23eQ\15/Q\209\7\179'\26\233\246\17\207J\1785\22\176+\170;\129\243E\208E\165N\229\162J\15Y\129\175V\241;߿\133\193\236\6\175\t\23'wQ\226z\134\160lo\136\198c\239\n\246T\226\8\204\2002\137\162\191Dc\164\230(\209\17\158\160\175\161\2~]s\138e{\228U\2550[\5\30\168~\18-\25\u{7B3}\241\20\14\199\216\7v\181\14\173[\209\243a\229S\t٢o\189'\179\130P\176\239r\204ϴ\223c\2230\154Z\2348\251\145\187\31\206\2153\238\176T\225b\163\16\186\136\29\143Kj\4\239[\192a\138\199$\175\248qse\241\186\251Z1\170̸&\253\19\142\213\222-q\28\181\187\193N6\143\t\244\25\217\202!=\215`\233L\219\31z߰E\15\184;\r\254nj\5-:a\238\233d:\221|a3\2335\231箕\242\185\253iV\130\209\234*\140K`\154\14\149\181\251\174\161\158\233ݾ\232\1863\146\246E\222\243\11\170\128ݔ\130\208nR\207z\129A@\179\1362:q\182T\2044\2227\0\163\154\188/D\15\206\2\178\\9\133\250\168>\1<\146\131\7\248\180\17\165!I3ݫՏ\252\133\210\197\202\6v\127B\240\249f\167\185\129\29\152p\17\143J\213J\179H\137|e\160\242D\201@'\172\204ogO]]O\143\224*;g\156\221c\26\237O\25\8\224\170dR\226\26\202\2370lʤA\196Ē\5Sb\187g\215\228v\160\4\166\186F\232\208DX\249QF\169<\244\t\214\214gI7\174\236\254\253\169B:\133\\\195\18\155\220\213q\243\3\181\205\2159 \1921\183\208\228Z\132\149\180\27\14\173eH\236#H\214\192]\171\16݀zuc~Y\1995q\8[-I\141\142{\211ϹfC\158\150܅\141\213$\2\145\127&\178\133!\240ky>|6\246\219\219t\"YD\204r.vcT\241\220\3.\27S\205\243\230\186\t!A\\\229d\r\131\201Q\135,\140Jj\153\245\178\229\137\213+\228\11\168\248\205\14\221\\z\166<\204\228[\163KDk\244\236\193\229\170\245\209\28ެ3+-\228~\23X\n1\128p\175\216]\170\212\20UB_\200U\150\247{\181\\\29\r\203\244{J\174j\31\164\234\249\201C\148\147֖\11ώ\136\135\171k0\199\22\186>\166\240\30c\253\203F̹M\248u\193\22vI\141k\200,\179\22\173\226\167\241\19ͯ\189tϖ\225\159\23|\247\180\r\131Wt\197V\127\31\1296t\231\175\224\18sԒ\4\23\177\21\154\7&\254\29\17QQ\217|CJϤ\174'$^\238\157\251\tU8\n\134\0\2094k\198\228h\190n#l\1-9{\225u\0219\153\127=#\173\190\190@\233\131\18\232j\164\219c\224\230\206\236i0\\\26I\171\213\247\222w\194\236\178`\241+)\213\221o<\183\176_\144I\242٩\140\31Ҩk\4\179\224,n[m\225G\22i\220\208\2147\253\177\\Ŀ\193H\148\228\157\255\153\134\227\1469\236Ht\14\198\r\145\27\252\128j\209A_g\221\\\5\149\0Ǯ\27\28\174\252|\165\6\255tU\159\141\27\233\163\201\232\178X\145T\167\184\2068\181\183Ɩ\7\19\25\139\24\174Ԙ2m\181\t7\234\211רt\184\192g\157\164\171\161\26Γj\220\248\175\241v\r*R3\15T\156\200fA\1553\178l?\128\220\23\25Č_\0123\190\244\229\247\201\226&\6:\27n\232\0\247L\22\223\23z\165Q}\1\250\219t\155\217v\237\207o\154\"\190\234\162)\245\252\240y\255\21]Q\252\203kT\0253Z\212pj6\139/\16\245q\15\239\234C\7\152\189\182h\254%\177\157r\204\2\237?\240\242g뙚\8O~+g\142V\225\0\"\151\243O\2\200x\190\5\148\155\213\249K\139\207-?s\147\25\154\134\242<9\157\172\221G\222t\1961\248\136Ը\131\28\4\198!%\168gl\156Q\193\254r\157\188#ZZ\252ѩZ~\203E\208l\213\226`\160\162U\148\181\161\199\214T\0\155\208\r\161\11)?\142\190bR\0\140E\159\16ZQ8kr\162\206\21a\159\158\161\157\177\24\19\163f\168m\232\241/\234>v\178g\137\2335\173\242\234\192\30\173\240\5\130\160\163&\230\238H\160_I\251%tf\135\216\0\147l! \158Fz\15#\238\6\180w0\211CH*\1975q\153\224\0 ?\195\26\174\167\30\249\165s|\8n\172a\208\222\210\236\2074\8\18r\23\205V=d\219,Ov\136e\14\1992\1955\134\153\191\211\208i\221Ɲ\210b\15B\"B\142\155+\r.\191\24\255xnօ\141\184\240\240埑;\2344`\157\145\222\223H\135\161\nj\174C@\167\254-\185\134\170E\157\8\253ҽlc؇\183-\tY\19\216'\147\165\155\151\5#\173\188\233\214\240\147O\227:.\161?3Sc1\225l\155,\146\195_\1472J3\n?M7\231\210G$q\216S&7\219pJ\5\222\213j\193\190\176\19\255\26\219G\146\24\31\141\142\144+\134\245Mٮ\138 Q4\2064\142\25\0274\172\234;\20Y\173\n\199=j\236u\242\232\244<ć\131\174\\\8[f\245Y%\129\226dX֡\217.\2338AF\8a\6\1563mҎ3g@\225\179-\175\228B\213\209\218\251\21H\208\217\234m#\193\166\2550놜\250\203Q\24\18\5\255G܀\182\236\154\208\204ܳ\16\1849\188\210D\u{74B}\16=;\129N\6\255I\137\0169Q\1816\169\182\166H\"\149V\147\127>\192\t\165\205\209\26\145w\235\153\17\1345\239\"\132%\1421?\242\178\204\208\238\168!]x\220I[\22Z\179\161t\4\188\165\207\0\18\248\144\196L\1\136\169wipJD5-h\28\161\253^\n\r0\197\234\228\146\207\28\134z9@\243\192\130\17\3\162\225ru|\177\2429\233$\195\228o\220\5S]3+\30\234\187\229\255cj:Q\225_\185\203\237\198\234\28\254\247G\158\147\212\200\221\202=\nKE\142塟\248\31\127g\212\1U\190+\132\186\30\225\236\169\241mg\\\2032\146\1888\152\217\236`8\127#\152\233\154\11\214'\27\6\240\172\181]~\169\155\165\144\173\19\199*\209s6\149ڛ\245E\132\195\240\138߀e\135\27\192\155\234\249Y\191\185ܥe)\222nj\177<1\205\31\143X\1871=\1-\223\229{\253\216}%h\165\4\193\152ʩ\166\14\14\181\128_\208\203r\209zay\247\4\0299?\159\251fh\206lC\161\152\r\1327J\181\185\1382!\136W\199~+\220\12O\tS\240C\205\223;\147\131#r\240\212)\r\231\232g \167j\29c\191\148Hg\162*\180\11\221\202P\138\237\219}uߘ\186\193b\19V\138L\227\14\249\220[\20\2\143\1861b\14m\22\180f\14\15\19048\n\130\253\156\159r\229\144$Q\224Up\168\u{EE88}\184\23ءQd^\18ʿ7\235\205\209\235\176vH`\211\194dY\143\205:\0193XJJ\138\235\0251\tW\238\26\157J$E$\149\181g\244}\3\129\194W&w\168\131\174\158-\23\23\190\151\145\174e\224-\200P\188\137\195wU\245\t\203\222d\153\6t\154@\220\209\253\153\145\193|\129\166C\242\187\252\11\19\252%\165\155\136ށ\204a\191\186\228JZ\14\171pr$:\8\2228У\144D*\204\245\226\24\149L<@G\173\136;U\27g\232-\146\127)\191\187\140\0\144\153\130s\178wy\2464}\14w\n\23\186L\159\207\194\200\222\240\180\14\0\133\140\249\138\2018nP\253\170b\\Z\141\137\3k\222\29\3G_\175jg\3\129V\199\223Y\252\185)\183\24\196\6\212\3L\171\132\212X\200g̎\135Ukl\\\177\237\2547\216x|\222j\14126}\187\201\201s5hN\29/\138\235\20\201\247\179\190֖\167\178/>\185\2nt\166F\135\182\200\200y3'\247\0287n\165\148n\159Q\228m\1991J\236om\185\202O\171\254\2043I\144Fs\241E\252\211[\224\6\249\136l\202\246߽;ʭy\255o\214\208\210φ\150\172\210o\166\133\2\146\168Tf\173\175>/V\00151\146#\226z\199\15\25U\184\22\"\239]Z4\230]\12\22\164\20\0*R\179\19373\181ɋ\241o\245sNƹYGA\164\152C\234g\205\251\169_@X\183k\162\253\216\t\158N\224\24\25\194*\249\180ӫ\161\20\228)1Q\189!\163Ձ\28@S\187\16Gv\245ܺѸ'\133\148\0\164\154nw\221!\15{b\200rnl\3B\250\149\128\1953P\240X.go-\193\247p\205\19m\244\5\254\160\154{\246O\207\2506\253\212O\nJ\237\171\234\252\201b]õ)u\231\1812i\27\191p\227Q\u{87}\t\165g{\1846\242\11\8D\245\173\242%Y\162\2y\156\171\183\227rX\23\150\183\30\234\154wT\3\225y\130\u{8A}\156\t;\194[\2\2\132\12\4H\31\197\22{\178\197\214@\21731\188w\145\199\7\167\142\15\31z\236\242J\15\210St\178\220\195ˀ\153\16\155\134\191\30\144\5\192y\196w%\18\148\217m7\253\239\160P\178\176\24\188K\232\"\155\150\250x\255\251P\27ڃ\155\144&\21I \250\162Ί\4Krq\173E\173\192\31\247k:\137\214\21I\208kK\247\27\243l\154P5\4\135\154\231\146RLMiѿ\134\249\18_\171\157BΖ&\29\161\198G\242\1669o\5\18R\nl&\1480\2165>!\160G\143\231fx=r\146,izC?\133\137^\157\177\199K\16\208\239\138|X\168\235\21bQ\244N\t\178\136\166\237\18n>r\178\23k\147Bi\176\176\175\187\244F\18Wf\166\153\132\11Xg\23\139\231\215vaE\174\23Q\129ۼ*\16c\247gXE\195\219\206me\140\218\199\30n\244\21_\193\161\205P\212PE\12+)\212\17+\184\232\1̧9\255\241\255\27-\240!F\31\155\229.!\154 \242\2lY\186\24\147\15+\n@\171*\142\207E\145P\0\25gn\1959\206#Slo\211\11\225\164j\162X\192\133\230kqأju>\172-\191\156\227-:\213(BؐN\239\224JQ\194%#\152U\194\236\1575\30,\171/\213\250\251\236o\163s\141\u{5CB}y=\1585\26U\131\224\16\187Uä*\173KO\5\"t\134\t\243\161F\8C\171\191\156\1\178\160\170%>\19\152\20\146\235%\16\230P\226\167r\198E\140\159\183\229F\225k\134\180\152\182\164\1\154tC\127y\225x\247\2024\\\2143:փB\224jbÖ\144\207\3\149\130\245B\226+\217\20\151\26\162\182\175\253'd7\162\136\21\14\t?l\0\28&\155\169\178A\4\133\175\246_\158\254O%\196\2546L\171U\197%!g\24`i\140-\"\194<\162#\200\r\129=a\18Q4i\163\3\191\28\190#-r'\28\135\232\200\5\231~\174\136\203\"\179g\178V\130+\183\181)\180\142W\191Ms\216+\161\n\130\139\1776\0022\"\n;\131\25u`V\2001\248\25\28\184\153v*\244\205E\128\226\144%\223#e^\137\17\168\254w\159\27\0FG\u{90}\178\173\143\18\145D\151\149㾰q\230ٱe\6\7l\1897)j\192HT\174\245`\206ji~\188\151\138,\140\241L\228d\171\212\234\238`>\22'\14\5uh\227\227:\6\209(eW\22\28\235\203=Z\139S\6\r%0\243\253CI/\8\226_\182\182\163\1926grq낳\247\155\24\235\181\254\195\u{88}?\184<\187\2254m\182\145\190TH\18g(w\181\251\157[\238\213\127Dea2\214\251\132\3\144\160D\183\230\14\184$\148\132\30=\225\235\204,\200\3\227\8\193\244\"\247\226?\144\31G\182\242\249\184EF\187\210\20\250\153qL\1889&1\7\233\224\184L\16\195:\170\171t\215\0051 ,b\131Wf<6\11{\132J\147gw\148\172\140\236\19\128\5\2426Yb\27\192{J^\244M\139ޘ\238t\235Y]\130\239\11\29\193\242\24\15\253ZW\29\198.\209\217\238\1991\249`g{\245\r\27\8(S\253\220j\194\250\153Ip\19\234P'\192\234t\159\31]M\140\172a\161w`\239\7\177k\6R\130 \21\191eJ\207A\3,\218\225\214Bx\254\26\232- ;L\145\245\208v\193W\19\249b\184\207\127\130\255 \199F\134\154F\145\255\160\155H\173\31t^\243\249]\19\175y\215\u{A0D}\29FY\136\178o\224\150\203\218\227̄\11\157(w\11\31RUE<\29_\132@D\232\238\2066{\236Æ\181#\1757\172ൎ\1970\5\nl>\3\12&\130\180&8aN\142\227\245`Iᗆ\223\231c\225\144\200t\157e\18=m$\175+\131\7\146\204NVz\12\159\158\180\142\176\22ŝ\31 NT,\231b:\225\205\195R\130B`\7mĪ\1692l\"\206\231\156\250\197O\187\137\191\156\19xb\127\242\130\15S\187\135\209\27\2\148R\192\26\217\22\161\186\0\7\219|;2N\132\202'\191\154`[\128\162\238\r\181\134\147\174\199KRm˴\224*\218\25a,\160t\203\"9\200`@M36ڳ\245\157\133\129qo\243\199l\2091\6½'\7\1909\5\198\2\252\133\246\225\5穞\4\212}\237N\209 Dg\191\0141I\205G\145d\182\2173\192\162S(N\165\31\220}\242\204S\163w?\235Ѱ\151\19\2001ޅӏ1c\24A\198QnS\193\222< \167\234\204\211\n2}>o\0031\239\18\152\204kJd\188c\128Ψ\4\181\239Ӌ;\248\195\210m(F\155\164\12\12\138\236\142\0245U\216\25\142q\185\184\179\212Ё\tX\213M\246C!\138\4\204\21\21\138\1955&\240\131Qz2r\252Ux\164\230\157\23Å\232k\139\155\19L\211 Ե\23\8\200\5\30|\nB\198-l\153>\ra\170 \184\211R\12\217ǫ_\221\21\146\6k\176{\140\138\183낆\185\0264\217f)ir@\226\16o\162\150\251\184\156ҡ\224\163\3\167r_\21\0305\2227\25\175W\1881C\242\191b-\249L\2294O\167K\173\172\176\238<\141a@Yo\212Uʗ\171Ii\185\231\2490\206\0165\231\185T\146\134Jvq\\R\142\5\131\133R73\214\222\24\166\237\246\214i\3\26z\220\227\1501 \252'^Mφ9z\184ӟ\241\186Ҍ6+\141ټAL\213\251\20~\192^ \211jῺ\169\186\181\12\142i\24\217\24WPh\157*g\22\27B#\0009q\229\234;\235\134^\195\2550\201?\192\235\193\206\235\171\242\164\2\157\141\159\132\173\230\146^\18\242g\178$7\213$s\0175[\rH\155\221\228c\214\233\209\24\249\165~\236\136P\139\207\127\193:\6\3\226gm\192E\"\180b\246\226\212yCK\183\201хat\173\245f\190\166\198\220\26>Q\134b\22\155\244ݿ\173\7PF\183\144\175\227Y\192\148\1H:E.\252\0#\225\172]\186A5\137\214>\15+\240\4\245\\\2226\7;\245G1\182)\245\175\223N7\242\2294\255\233\246Ip\237v\135,|\152z\29&z-\238\199AA\136P\14h\183}ˎ~\169\149\31\128骁:M\236sl\161>\200\0\168t\17⽓\129/\141\235b\223W\169i\211\5>\181\205\193dT]\183n\208\14h\207\239\1505s!+\133/8\132\226p0s[\16\236?\1465\238\\\t`:\236\22\28\207\226\134\206~\178\247\197Ft\6\168+ \196\223R\158\146\233d\233\254\227:\0031\231|\131q[\131\162k\197#\177`\142\238U\11p\15\165\21I\179\244+3\191\227ٿh\6䴤H\177ͨљ\145\152P\31\r\222\6\8OSZ\235\224\133\160\0\224\220⿷\229\211J\221\1970\159X\180\240\194qT\163*\173\128)\151A:\255.E\172\145\11\15\254\191\164\170\18!\216_\254\165\200tG(\194J\236\238\128\14f\170\150\23\3\201a\187\175\186\200i\3\243\0078\221:3\22ֆ\229\168hރE!eQ\129\171uj\7\159g\184&.\221c+\8\18\20\232\220y\28\205\250E\131A\150\132\162\164\243!{\187>\206\240-.k\182p\154\198\27\188\236\209#C\230\248\199\26e\178\12\139ӡ12\146w4\137J\178P\250\220e\137X\1385\153g\1E\170tΐq\238\254\145F\167\0309c.\u{8F}\235\228\151\242\212O\208@\185\254\4\188\1\0001-\192A\166\164\128]\250$\180\252ER\174\172)\132^\243c\163D\1\249\"\147Ћ9\160\183\163\2538>\219\16\132s\134IgL\0rsc\212H\18\247\251\158\130\1\249A\150\30P\162\28m\143s\214+O\12\11\n\28\187jɉ\184[\247b\179y\170\23ZUB\211?\191\151\143\199!4\202f?\218I\229\177\2\8\142\146\167f.\169\148\159\150Ǆ9G\28+\210+ :8\194\233\230\30\176с\134\145\196:\177\235\164\18\129V\148\149\142\218.#\26\201 \187f\152t\246:v(\203Y\211G\242\190I\226R\130\243\227\143\245*\2010\229\131\200\194\19\234\168`\14\3b\7*\0NQ\2340\170\140\2pa\22\194D|]\214w\28\221:\141\178\152\182{7\1498`\205T\189/\137\218\2345\201\251݉%\128\212<' \245\238@g|\5\211 a\237\133_\233\191Q\180\128wȡ\233\189\14\193j\230\241F\2079\3\164\29;\213o\178G;\6\163\134\158\190\240L\"\255\200l-\246\31\154\30\2265\176\185\138\226\238\253\229\165ǅ\168\28\239R\143\14.\193\187\146\2398Њ\188\222{\7\243\\\ti\199\252\170\173B\183bNk\15\248\156\158?@\170\213އ33\173\249\205\239\250b\174e\237\231\21_\240@C\r4i\150\237\182\225g\136\161\1\25\156U\4i]\242\175Z\196\220Y{\2074\164\\\184Q\158\162\183\200\12 zܲ\183A\27\173\24\26e\178.\30\6A}\184\23\187TJ\14\191Q\13899\198X(\250x\15\132\24\147Յ4~\30\143\232{\130\231\176H\192؉r\139\196RL@2\253M\178\253\194\r\192\164\227:\162=%\135a\191\254\169\217\200P\245\166\163\254\144%\244\155M\162\253SL\148\177\251\216C\139#\154[\184*\135e\22\251 \156\154\4\227\207\r\233qǲ\28\247\233\233C\183Q\248\15_\183?\162\215y\249\5y\20\239v\241O\20\196#\182\2528(\194\242\240\144Q\145\206\193\237p\143\4\175\222r\136\0\8\151\148&\237\134[+O\178\254\u{7B3}\2\215\1\143\254\178:\202_\"\1\153\236.\167<\\,&|[٧Mt\186\222ɳ>u{\218>D>ĝ{\227\189\230\158[ד\245~\31x\143\127%\6\3l \"\1471o8\183ż\156\225C\138\154\251\150\158\133+\\\213\250\129\251\132D;\220\2ߋ\204u\14964x\164\180\1762\130\200TiB\128`\14,\203\249\26wX\31\242\187!R\240?D؇\222:\127\176\143\15\205e\228\25W#\161\1808\23\163:n~\172ɰ\214|`\150\186%\194?|u\242[\133\28\166\209#]2\133}\5\1384\"L\135\250L\21\27d<\159>]\26םWcoiܦ\30\173\12Z\224\148\221\6\164\nl\248vP\162\184\168\244Ç/vɌ\168\1580\141\11%'\162\213\242\251\0140\157\178ͽ\145U\17r\150'.\5\3)\22\187tA\238\191\5\134\165\"2`\151\26\u{7BB}\201\206\0260!\220\244\18i8\170I\n\210}\210a\245H\254<\0193\17T\3\133\22\181\174@\12\176\131\174\212jރ\235E\250\127\182\30\252t\163\173͖\229\166PC\237@\155\18\1835\158!\204\0\207\252wt}\180\212s\240\181\228\253\237 Ά\253\183$\173\0042|\240\226\240\184\194t9\245ċCHW\253\250+\181\221}\199=\156\28\240a\131\156\167}\249\11[\226ZK\7\245Hd\195N*\215E\202(O\7\187\145\194\206v\246\150u\199MU\166˘׳\1781\173\161u\221\207\2(\181w\251\222\6:\178\170:\183\30\156I\168\129^\178\242\164o\217\223\24\147D\209\229!:\6u\152p\202P\152\185\14\248\250\250\149\171 }\178Y\188{\243\157\210̺W\\s\28\205\218\247e\164\219H\213S\248\181\201Et\238\216uW\195\209\235`_ԋ\1\133f\14\143 [\219ꑇ\167;/\247\6c\246m\159\2086\227,\205:\6\243E\220\22!\191\31\163lI\175\148ګ\2178[\208h\127\215\28\5\228\188;\186\235,ٔ\30\5\17\184\136\167\212W\217Fo\243\183\235UG\148\11y\209\7-\133\218L]vcajϫQ4eIb\222(0\144[p\155\1614K\2440n\21y\189\159p\5(u\178\250L\155\144\179Z\152\193\228ƶ\137\\EvKvd\20T\20\161\137\216\\\251\153\232\176\241l\163\136RN\r\140:w+\227\174\7E\27\26}(\221\208T\194=]q\149u\129\209y\187\213?z}e\249\165\2\1333\163\\\2390\"\25\0\207̓5\174\236N@ta\157Uȼ\14\170\189\20NYr\151hh\r@\23\188P\0\1\8\250\202l\200;\r\152]\3\26+x^),\155\17Q\184Z\230\239|w\230\157^\15\157\134\224\236,\158\238Q\\\163!H~-\127E5\3f\250H'\"\209.\153\237\217\231\180\232u\146\243\183&F\137V\1461\147\227\0:\241\\\242\233ۯ\24f\25\143\21023<\201\238Gpi8\217~p\1544\133\237\12;-\130\183`\233Z-\143\154\212\216ɵ)\154)\207F\150:Yf\27{SHm\190\133+}'\r\137\n\238d;\156\166X\128\12v\232h\175\1622\163@{\151ݏ.Gv\14\226Sj\6k\178\188\19<\175\225?\232Ac.\225\1864\222N\233\208@\240\134\183g=\154\150\136c\175@\252\131GE?\213`]Ϙ\141,\22\132\1973\206z\152\128\245\128oh`\rɻY\131+\0123\134D\14\4\24\139+\198;Š\190!\255\r0\213\230\11\14\7H\188\231\179ZÞ\224\178qc\186\225\195\251'\140LΤ\158\29\223q$\218K\3\207++0ĉ\175\216\0164yDԘ\31H\160%\253W\23\155ڙ\156\181Y\183\189\3kCMˀ\23\176Eϣ\29\134t\189\153P\239\16\190\23\0\129D\236b\11b\140\144\130\212\228ŉ3cu\251\163\2540\11\171\221ۤ\2225p\212 \0e\244\127v\143M\158\197\201\7~u\207\208\127\137\187\200\255\n\177\240\249u\2\235\170x;#+\16\3p\26\147\172I\170\248\0017|\4\149y\236\179\2419Z\140\1\170\239_\170\225\215\17t\139\12\195,\0\220\4U\195K\133\234\n\163\224l\194q\155\137\237xX\26\203ng1\251\187\153\249o\210N&\n\221I\163V.ۖ\174\165쎙\17G\130\129\2526\24\28\1609LN6\147\"u\19<\0053\142\147\29\165\133\152l\186z\229\247\195\11\229\30\230Kq9S\139n~\23\129\129\233dt=\242\243\233\193Dd\129\177\22:\193\255\n\25\184\12\204S\170\19\167\1309\3Y\202\201\231cf\201\8\195Wk\0275\0165\18\22\145V~\225\140y&\181\203c\224&F\218\26'\4\128\184j\229\226\157\25\tE^\253\25,\183\178\182\1308\1664Tka\235\242@\221w\157\209\211\207M\162~\254\30Ytr3-\150\141Xb\174\162\230\6\31~@A\171\241\"\18\21=\133\30\15\199\205\222\206+6j\0\245x76\228\18^H\160ZU\4\216p\226\2\218\4\156\165{K\18\224be{\u{F239}\186\234mm\171\141\174\26\u{98}\227Z\230k1\173U\30\132S'\233\244G\21\2387\147#\192\166\1468\242UA8<A\172\162\212`\135\167\252`k\253\159@-\147\r9\185\135\145\174\171\0237!\152\24\15\2466\139%\12\1\200\204^\146U\169\166\183\188Oع\141@/!\188\228\233d\153[\21~\160\191\227\215B\250X\156\161\175\214T\26z$\31N\159\127\216\210l\rv\161)\130^x\137@\191\247\2518\184B\130r\29G\137l2R+\150#\184\1955\164&\141y<\160\141\180M\217+lf\136?\178\27l\149\n\5+HG\t\250a\1401y\199}\221i\219#\2UC\21\185\171\134\164q\148\222c\174\162u\203\219N\253\189l\192\138\194\21TVO\224IѲv\164\"`l\190'\251˦\1\28\156q\30\147\2d:\25\243\3P\227Hw\161\239\248\221\5Kͨ\2\221\224X\175\176\230\4F\221w\31\240\0\138\252\202\240\22\132,\163)\227\135\\\206c\202x4.\154\230\239\217\16\17\235\229bm1\247\149\182pU\198\249\"\190mk\30d\131\180.\146\177fK\14'\141PC0\147y\178\242Ḙ\14\253\227q$\132%[\237ZBR\137\196\29\1\18\244\19\207\rY!أ\189vЈI'ȷ\204O\151߭\129\199\5\145ިƦ\17\229\228\248{\173\7\2;\r\"uu0\188\194sxbl\12X\211o\251;\177n\153\247z\222L\nD\228#E\142\141*^\206\1XN/)\175\236\206J\150\24\177˻Y\151\194\248S\132iK\143Y\224;\152\199LkL\184\234\167a\156\172\211\245\189\t\166>\7\tV\255@Ў\23\1743Dg͂VC\240S\2422\235eα\165Dcu8\23\3\28\138\144\24?\218\4\130\246j?F\0157l\5\150P\172\164`\207v*\21#\217-\162U\157\237\136\24)\164?\239\191n\139#\224\244<@\138\139\11\132ۆҳ\237h\252\25R\\\20\221G\0NT~.F\227\187\0254\12s\164sk\162\171\194\223\r \127\1398\240\162\11o9\141\176\142~\171\151\28\247\138\255--\154\158\12΅\181^\173+\173\224\20\136\22\214\239\162\25\235\191\28\245\227\195\203!\127\231ӏ\228=\236\223fΟw3\151*5\143\21mW\239K\234\29\196R\227\238ݎ\136G\1876\152e8\1853\249\233`\163M\210\250e\184:\213Q}-\178\29\162v)\21\230\29B\177I\181{\28\23\246N\170F\173k\225}\133i\17ΦE\204!\6_\2347\248\231\26\2554l\129\197b\204\199cP\145Ȅ\165z\241^\231\\\192\127\209\17~f5\150wO*\3\241\162\135\243N\5l\214\219\2a\244\2268>w\166\175(G\161\201\227\236ߴ\r+R\130\248bZ\189\173\146\212\213;l\30\253\202\248o\242'\249\186u\231=@h,_\\\164\154\140\139\250\11\174\18I\134\30T\254e\234\192?\194\0\131\3\159\14t\191\237=\200eD\26T\169\252\t{y\31͏qF\6\\c\245\215&\184\147\170\217RHd\221Q2\155\31F\167\190z\16\143\238\204\199\205{\2160I#A\5\178\11ؑJo5\2174\204\16\205\246\135B\150=\175\2{\172\203o\177\151\226\213]\218ZH\246\232\240V\185\190\1\192\144\"B\11\152S\2550Mꛩ\r\17s\242\148\nb \8\218K\183\31}$&ŗ\15\207\240.(\14wNU\156\138z\26\224\8\221}`1#\30\251\157µVx\208h\"\133CA\192\172\174keO\193&\130\20o\205%\208_\4\211\3\242\8\2525|\127n(\185\22̂3\132 :}ڠ\21ӣ8a\0174\139\239N\159/\0\3\192\3y\200C\170d\199870SX\26\234\2sm\214>K>B_\178\187\27:\27\193\253\u{557}*\203\249\246\168\152ULY\146\187\25\150eg\184\1\2292.\226\250\12\t\2034\209'\2286\168\242\133\247\150\137`n\190%\161\184LӤ\208\127\144w\133¢\229I \131Ø\192U\219?\198\194a\2073\231\141S\241sy`\t\159\144\31\182\17x\142*\237$v=\134\166\193\233\158Qh\191\166XM\181_|\177CѨ\144eN\158\169\131,\217\203o\143-\253\148n\190\182\211\\\209\20馀\129\245\199\2331\18\183F\139\6\160\6\186_̯\22oq\252(\224r\158\157\132\2403\t\135\196K\246\1554 K\154\253\1652\160)\145EŹM}\191\28a1\131\250dn\213U\255\128Xζ\178\30\176+\199遬\14002\17\140t1\191\197͝\229v\25q\202\28@\167asm>\147̷G\19)\187Q\195R\229\179\1SS\156\18,\255\22g\201\27\20\221v\242\1770\135\180)cƌ\181{\0229\30\235\131\211~\240\171'\208\229-\227\19c\232\130Y\167\150ٗ\210\n\1\129\14\157Ɍ\23\180!\237\180Ѯ\212ҡ\239%$\148K\170G.!s\145\140\255ά~\168\241\19a\187\132\248\255D\161\133쫦\217$\142\133\168\153p\19\249\189\5\136\207\3^\31\143\167\139\190ǨN\26\1991\226\t\202\19\243\27\206!L\165Ee\157\176\192`Eώ\223\22\137\0205Ϟ\227\245\233\235f\7\28X\u{5CF}\2352\229C\241h\194K\161I\218\226\170:\224~\193]\166\146\217\209@ֺ\19آ\239W\2396\187\203{N\12D\"غ\186m\171U\17U\167h\149\175ID\18\127\177̱4N\4\129/3B\158&q\197\203v!\169\153{\224֩\230m?\139&CY\16\t\181\229\229\169h\"KT\187E\234\238h\25\163\253;\204ʠj\15\20\"K\135\146\231\0309m\136\27\217\15\230c\133\19~\\\140\1516\185\131\146\202ǫ\199\230\26#\208\227\255w\186\16㹧\202B\156\133\235V\211\255*4\143\136\148\18z\235;\187\247\165\31i\216\193)\15\221\202yG\156j\2}\25\132\242\2\188γ\244\211-[}DN\174\248,b <\176\236<6hh\146\141/S6q\155\t\176\198N܆\253E\205*\238W\147\237\176\182\154Yl\18\152\29kd\29~\247w\234\157!\222\235\131\17\239\135c\215\2291\224\142!\181\175\14\5G\246\232\206\208h\0127M\252\205\238\12\233\178\241\250\182u\228\155\21\162\207\248YS\6\169܉\244CGO6\189\25\234-\173\171\"\165\225<$-\154\12\222k\243\18{\3 \150\2i\246\242\199-;\138C\253_\215;\231@\161\0060\226*\188sp\209\215X\19\227\133R\241\192\143U\167^\214\5\251\11\171\186\249-\157\"\198e\180Y6\0\200\2\n֧\134*\229HOpG\167\189xUn\177xp\216(l\1\r\0\143\137\228\210\243_\141\201P\2524\179\7|\134\137\152L\182Cܶ\164'\235\168\23\162T\146\188\208<\252\20\238\208\18n\136\170'\254\225+\1771v\184\230V6\133=\0b\139\197\192\145\31\152p\237\242\135R^\130@\243\0015\244\237\156\"n\173D\215p\240\2240\164\1691|g\134\213H9T,\174}=P\190\171\247\223u\128'\139o~\225\22j\219L+2\30\166)\0\"CM\184`\214nxŭ\160\22\232w\150\229f\27j\194$\219[e}\181xw\248\166\139\183e\218\192RV\26L\194n\233\26\r\254\176'@N\15\4\224#\nf\200.f\224\8\182\169Z\246\14/\2315\145\162\n\218\n\172\175\183\169\14\135\237VE{\176J\22\rc\140AD\1978\251=\2438e\252Vgtgm&\149\201IhnǑ\157\187\148K9q\137P\220\5\244\152l\4\127:\183A\18\236\138\12\140\180\25q\244*\170>b\244\237\202+\20\1938*\239\191%l\1685\17'\244\17\150\171\168\249.\17\139\16ih\225\128\245Sۓ-p'\214\222}P\213(e(Oӯ]\193\136\11\199.|.\176\172Ĕ\230\225\6\139\235\227z\218\29+\"P\181\23c\244\nb4\18c]\212\0207\u{58BBF}\193!\189)\245i\192\"\151\211uE\253\218\215?֟\7\25\159\219\14\127H\241?\194\255\175=0`v\230\238\0\162\237\146\2453㪶\8\241\249At\250P\2377\153\\cUM¦\141\161\141\211\200Fs!\250\157\193P;\183K\11\156\21\182ըsd1[\130\17\149b\1850x?\210\192\160\172z\145x\16j\6\2\21\238U\1767V\193\173<V*\11\216s7\185\177\26\168\152Ѝ\150Lh\29\221\214\0159C\29:\225\169\24\29[\"\210D\138-\134\163~f\247\28\172\26\155\140\234'\205\203\207Z\0Ւ\134P>\128\165#\157\169\198\233dv\255\12N\136\142\148\240\228H\206_֚\224\198\214\"\7\19/\191\8J\168\131\187,\143g\7\8]\175\219\223;\181)\172J\184\1534U\239\206^\248\158xR\214h=\1359\131\1760Ia\176\0j=\197\t\188\132I\194\240@b/\240q\139\167\8:#N\2\166\29\197\193+\184\20\228\31Gx\174\140\132]t\28\211\236ڨ\143\222\230\250)F\180\149Q7e\131\234\132e%\188 \28<w\148U\235\175t\233\2x\153\218{\23)\1693\155\236\20\128\134\247\190У\242\250\219\253\140\153Y\171*\19\211XL\232x\180\22\230\171\12\252x\164)\152t\152v\242\192\193 N)Ύ\18\162\28\239Ҕ\29\1400\129\19PkJ\229\233l\0\167\199\0\235\246^5u\215hT\7f\232\4\2009?n\214w\209\7\203|X\237\236\222\249\253l2\167\210\200r\170+\160\"\184,\8\190\163\253\230%\\\229\"\1300\252\218\243%j۳\165\14$\212\235\187\8{7\199h\152\211\247\159\24\27\154_&\167\28_Y\130N\11i}\158\252Pr \188\249\243\139\184\251\24\n\244\171\147M\219s\138薠\178U%\170u\243\175\171\20VH\15\22\25|\230\7D\246\28\186\5|\n\237\18\212\25\185?\218P\135\143\207[\173\220\22\230\150d\2L3\15\1\24飽\228\"\"\223\233\243\202\6\224\3\183\237\196W\145\207ҡ\30k\247?\8\28\157[\173R\155\168\17h\129\5\176¯\20;V\245.\1919\180\181\208x\240v\140<<\254\185P\147N\142Ʀ\232\178;v&2\168\191\217\219\16\165\224\244\5dW\176\29U\144\225UKm}D\161\26d\3\137\246\28\4师4\145\192\167\30Hi'\155\203u\23R\138\211o\158\212= \201U\132\253\30\250\162\235\235O\136\20>\175\6\254\n\"\0000\243<D\193\8\135\134?\171ry\205\254\169'j\161\143\138^\190ʤ\17\192\236\141\196\14q3\222B'\140\t\211[\6\142H\149\244p\01208\25N־\196,\249\227*V\177\216\211]n\228\1765\n<\29\210uc\242S\232S\237b\145\228\223E\251\164\197\232\239Ce)wl\0\181$)\223gK]\7ae;\149\212\206\t\149/\24\1910\228\199\24\5\\\184\226k\27\171\142\27\158vwj\16\181\148\140폚+\205#̺\164\242\247[\157\196\205\1\19\14Hں4\186(\129\183f\21&u\179\174\20\185\182{\139\247J\2427\183\247#K\239\245\171\157\173\1272\229\147rj\253,\25\185\7ZQ\230\18\251\141I\169X{\1477\221\2272\181(\199\199<;l\245\6\248s\255?n(\254\239YG\5\216rV\28*\194|v\244\198҄\2510\156Rv16_\229\220\0\189\135\27\220\2549\224\157\2317-g\148\239\145\"O\231m\t\135*\185F\167\203\20#\250ϟ߸\0264\215\r\28\191\216\3\226\168s\131\249\178fU\8\163\161\128\n>S\251\170\142S\158J\1865\1899\211/\202w\235\219$\136?j\141\2\146X\19',ٿ.\141\187\18^6&]+\134ll\217\240\197\237\4\211\11\187\171B\237*l|\1H}\206\26\241\205v\196IL戫uWR\130\8=\138\1679f\141O!\201\17\247\142\241\157k\7ә\18f\223.P\243Yh@\193\143\1363\133\1935\165\136qG\176a\21W|\230Whe\1\164\2179\144z\145~H\199y\167+\237\182X5\144\n\144\17\175QGo\250:ƉNb\232\234\1774:h\141\235bZ\19ʶ҆O\250>\133\237\133[\196g\253峜\194Z\181\17\25e\205gB:^\23)9\144\220\227\139U\159+\224\185\230p\182\223\254\132\245\0143\150\18\0\214\248\12\142o\132\198i\19\250\28\134\174e\210\0248\12\222l\148\210C\24RM\21\171\171\239l\1609\239\143\6\1295\202q\229\210\222\225\203t\160hUyBw\134m\149% \250\210!\26\19\234\163B\192\136\146\181*j\30\6\158.\t\23\191\229\15\205\204&j\147\164\189|K\29I\6:\143\174\128xbwF8VC\228\195K\18\232A\17>\133tq\184\194\239\157\219\127\130\154\230%\141\161\164U\187\138\167ȷ8\143n\190~\159\182ߟ}5\245\196O\232\180\215f)^\156:I\248\182>\162rFñZ곱\253\189Z!R\199\31pL71\161\31\142\194\127njXu\180\222\239 \2101\174\237\224r\15\"+\157 \6\240\188B\6W\128\177#\161[*\164{\30S\200\3\128K\250\25\138\6\239\159\3#\150\1769\232\144\240\217\252\165\21\154\213\244\250\147\218\214\22\170\214\204**gUhQO*\20I\0\145]S|\148\162\19\131\21\227&\254c\219\23|v)T\214\196?'\n3f\168e,E\27\212\31]\250\1319\173\203)\1\251I\220\0\206f\130\144p$T\211P\197K\164\193w\196\193\r0\143\214}ڢB%\182\7#\135\208\4C{C\207_\"\230l\14\190\183\19\146y\205\6\239w\183Ͽ,n\232^\184\20-0.\242gwwB\248\238^J[U\253\163C\226\251\152\224\"\tۀ\179\170\225ޑ\233\238[\153\186q\135^\146\14\230cP\211r\129j\176u\177\221I\140Q\153Tp\238\247\26\161P\129\157\147\142\219ev\217\20V\244wS\212?\158\0\227~\223\229۷K29V\5\251\236\205B\23\135}\210\19ly\5\160\244a\0!\2076vdc\154\215նžt\29\133=l\157\185ٍ\1z\155\25511\176\180\172_~`\1800O1j\185n\190\23557\196\194\254\143(^\251\182\175\245\229\208\224\250\15\1537\254ER\u{1C485}\220\232\244\233\0317+\245-\176ῖZ\131!\153\128]}\234f\145\185\160\176d\149Ԥ\128J\190'$\207\208\205A\nk\154{\173\212i\17t\224I\229\253\134\196\29\151\196\2102\8\229\28\11\140\163z\2161\160\166SS\27a\229\n\188,\"Ds\184\139R\132 5\145\167\7mWX!I\235G\181K\134\1\165\248P\176\0+X1bB\5M\244\28qX\227\30\224|P\253\249͂\n\247\140\191\213B\28E\247\n\217\22\192џ\169\233\27\184\222\0225\184d˻FR\253\202\3\244\n*@{\11-s7\168iy\190\162\155Gd\215\\\136\194;\175\150O\200;XxjYE\232E\158\218\229\145H̵\165\207*\142\181ػ\2424\129\3\218\28@u\178G\1921n\205\242\143+\184\213ɱ\127`\247{\233Y\186{=\244\20=\197p\240@;w \23\250%\23\251\136p\206Ŧ\245\162-\1291\201?\160?\146\208?j\u{EB6E}A\1\141\2117\22W\151\22\133j\237\31\u{9B}\215\212\4\235\211R\191\27w1؊:\204d\208q\207\29v\212\208U9uŞ\239\1486B\186Fdc\214f\6\210\254\248?\211ޫ\190C\137\0\\|\1888\128\161e\147)\167\177j\232\169\249[\167\131D\131\29\206[@\28ђw\186\129\150'\250\24\251\220\237\r\128M\30}\178\192\30\30e\223|\178\245\211a\22\191&W\150_\ru:̍\19\224vz\163\228\178\196k\148\235\235~\230Y&\209o\236\209n\15\238\1300L\5\148\174 s_E\178\241\2477\187\251\162N\23\175観\145\254є\135U\179\15\182b-w\159\135>\162ެ\252\t\188\193\22j\244\170\"\159\166B\233ѝ\24I\211\"\4\140\219%{\145\138\166\177\184w2\150;y\142+\185\179\180\255?\217\229\133T\2{S\205\19)\189U\252'\20\176\233GyDf\190ð\148\248?rQ}K&.\130-:Z\215\232\221_\197\26\237\142\200U\15ѳ+.5\223y\137\r\8\230\11F\158\221J\137\234r\228\0\205iE\2\161\229\135JH\136\156\193,\237Y\192\n\2Q{ڨ\151\162\202ԣy\210\12\161C\169\146Dhˉr\141\0287\222G\162H\147y\181#\244\17\247\31\163v\153=D\243b\23\142\17\233u~k\149sB\147\142O`Uţ\232\247A\24\7\187\24u\237\1'\229\155\8L\211H\29\137D\150\235<\223\21*\247\222\211buG\169GZ\248k\146\229\209\241\4\244\251\238m<KG\249\167\131?\17|P?\159\158#\196;\233\187\31\156v\190p\246\245*\151`\131\212@\146\162\225MM<݉]\243\20\25b\175d\15/\217M`%\158\186\3\247\234\204\213Ϳ&\242\229\246\20\6[]\191L\200\255\14\6yVr\245\225\1900e\253}\222'\216\221z[\211dDپ6@\171a\222\18\131b\218<\25\253\166L}\183\2208ڔ\"\12հ\17\220,J\158C\215J\242\234T\234\0312\236\167\24\187\28&\251\239\2337tU\218\248\138\251w\n\172\195M4\184;\244W\246\\\148\198ge\183E\161\203H-W4\146nqX\0291\243\167\231T\174\170\187\29\3^\15x\237\160|\210\235;rL\140\22R\12\162\131{\22\165s\145\179\1284\163t\24\163\242?\214]\148ދg%4\250\6\187\30\161\213\16\231\31\130\154t$כ\184:f\145\224&\251T\248\218\203\222^$\0-ɢ\238\27\237\245M\201P\212\0i\215M\231\11\156\136\18&\164\204p\237\175\203F\26\19\171\177\169R\1301\24\178\1|~\153\131\24\0072\152\184ZL[\12\230\1975\17\223C\150\222a\176;i\226,\22f\133\250B!=ɔ\186\181\\\149^\240)9\220~\179\190\150H\17\164o։\152 \237\159\214h\1773\219\234n\205\197pyrd\223O\140\206\236\156{}\192\154L\2357\230e,\221\197\195]n|$\230>_A\229\6&D;\25\131R\\wk{\165\20\19o\199 \152\187\219:>\252\253`\25tt\198 \159\180%N\150\"\144\127\172\15\234=7\242\31\200'q\147&\28{\248\t\23@\215ۈZ$o\151\207Ht1\217\228\153\242P\168\149\134\12\2521*\15[ɦ\151N\201/-[Զ\1h\229ǉdzK\208\n\251R2\205&\23s\18\139\210\11s\245= 8m\221\2\"K\t;\194\12\24g)$\225\249k\220\21\194\251\212gB\180\1\175\188\231\226\1331oŉ\2\186w\146\241\228g\23\174\191\1731\208\23M\186\222\241.\244\2\254j\0\18_G\163\241\6\233\214ل\187J\250\8.S\5P c(L\4\2\132\29\14I<\188\r\r\135V\184е<\180\170\1842S\155X\251S<\12? \21\183\134-X3\tԋ\218&̏\1X>\168\27\193%9B\137Ť\14\154j\"4@\231\26ڢ\128\197\246%2\135\165\242#\1\30\211v|\6\202\253\174ݺ\233`\161\232ۖ%\159\186\145\31\148\245\23\160\244l\236Z\127]6\146\206\197;ȝ\244\29/\219\254\145a\162,$G\17\171P\156\145\214\17=\230W\137+\222\249G\134t\221\tߦ\243\244^\183\247f\152n\191\231\213\243\196\219\254\251\160\223b}ˋk\218S\234\"\146<\186?\17\19\29\145\23\168\236)\145f\17\228<\174\183\r\17H\231!\213Iyk\220ޓf!\157\137\17\29\18\231\146\242GRO\19dnu|S\150\6\228\140\250\212o2\182\175\147f\1306\133EKK\219-\24\251o\182^\253TN\222\\2Fj\233\142}BQ\236\20-#\238-\219\193a9\187\157}: \147\182=\233\1\144\230\210Mi\161\1\128\200t\227\5=\233\243\162bs\154\224\229\17\178\177VAa\14\26\24\153\229ڹ\135?]\184\211Q^ܟ\250\129\220~9ی`~\195[\1\194\215\223\16!\165\195\17\145\19\228\172\207Sz\227\166?\224V\212\28\146hO\218r\191m]\170BJA\r\190\\\22\245`\252\197\226\186{\183\235X\134\224\6\128\142Ԯ\6\249|R\217M[\163\131\19A\23v\0\188\133\2413\141\16\19\148\192w\"\129ۺ\164\192\252tx\191\26\0\236\185\232{\236_\248\211\12\19\210}.:6`h&C\200@v\186[\142\155\175\202\19947^\171\153Q\7\191\185\235Y\137\0190\253\243@%*\156q\246\131\234\145\22\132\193.H>\31K\254\12s'າ\238\u{5FC}\251{\169\t\15T\228t\16\164٠\1938\133\231\209%8\232&:\3\173\197CI\204\244<=\7\251\132k\249\162\133 h\200K\26p\7R\213mCn\20(\4<\11(x\128)\201(Q\225{\16\227\237\193\237\211\27\206\232\0X\167\170\177\183\163\241\236\170\23op8尿\2197\212&\28ux\198\196kS\149-\160\26S\1{5.\17E\248duh\19{Ϋ\254\232\15+\30\208\5\221\241{\133\11\208<\235\r^\217>\16\157v\249S+\217h\143\22\20\174\253\221\2\189\1820(\232b\19F\8#\199\\&^CTĠ\220\25\140\141{Bxj\160\233\190$$\229\12\254Yh\225\156@\163\178\236\176]\206\2\151?Et\2\181f\133v\20c+\2060\165|\21\0080\140\169\167\16\179r\205s\127\u{9E}2\220.A\235\255\164\162\21\236ˮ\249}1\24O\22P\185\26N\247\31@\27\u{9D}\2422\196\246\248\246\149%\173F#ಟD\t\15\30\1766ܹ39\162\12^\"\177+\8\180\143\"xյ\202)\181\164\1444\223i:l\130h]\141\132 ]\196\14\151\131\176\199W:\tk\206\223,\167FV\206@\133Ppj\193\14\181N\196\254uL\244\135\127\193D\182bf5o\3\163\133~\229\173N\204\226\2558\3\19Y@\199.\197J\1918\135y\20%\255\127A\161\31*\23o\191\31\244\239G\16A\u{590}\154\208f'\5\218X(\147\8&\169*\234\26\238h\244\246n;\135Ek\136B\7!\26p\\J[\2006\200Yސ\7\7f+Џ:Ƚ\254\179\246\178Mc\205\t\223\2044\\\16\0166Q\171\130א\146\132\161\247C\142\245\170o!\247\8c#\164m\135\225\129f\4H\247*!~e\"\18\176\184\24a\203}U\237u\1480\239\255\198[\151F\0013\175D\160xq\216\243\215\249gocx?\159\249\128\4\234B\169\235\200̰\255{\188\163\153D\1971.z\165\240sޖ\177\139+\148\253\7՝\210\14J\169fk\139H\188\182Y6\169\204\236o\175\137pBK\186\23%*\249\156x\168\206\237h\190\235\228\202]\212\249\150\22\173\137\6\136\216\217O&Z\1672\128\194.G<\128T\148\249ˌ\190\217\2248\n\168\188H\134\238\3Ý\27\0\23\137\30\198p\20\"\160\155ଥ)\26h)\161\252D\176\169\150\135i}&\31\233\193\207\29\u{2E70}\6G\191B*\157\230n*\136\244\149\231Û\240\156pR\135\223\"\134a<=$\30u\177\224\235\159A>\143\222\23K\26\22>\5Z\169\21\130e\228\27\250\135sY\170\148\2398c\188\169\165\30\19PJ\190\175\24f\153\224e\25\193\220\23B\t\253\167\230\183˳k\237\236\140\196Ԕ@\5i\30^\194(S\177g$u\161\152\133\159\4\t\207O7\175\194+ъ\211\r\232\14DI\183]]\170ɦ\149\2\169\219\1H-AL\162\220\20\152u\228\243\182qӊ\153\167و|\\C\r\206y\153b\"\204\215\29\134Ƚ#\151\0\2\0WN|\165\236\u{603}\147\225I\21\242)\200\240\205\7C\165\11h+\232Q\195ȷ\245\174sm\240g\21\142A\3t\193B\173\153\149!\134\2339\189\250w\133\170\214\233\168\27\219/\215\232\178\8ޑ\245\27gp\160D?\219Z?\154\158\224f\175\164Bg\190.\248\252\227\193b=\30Ts\227Wx\210\"W\160\135bV\188\234\254ԯӈ\132\15\235N\190ZN\1501\154p\134\152\130\229ނGE\191pC\152\229\247\211و:.|\207o\155\178\186\171\156\224\n]\1600\227\2470\200\222c\3/\137\224ǂｾ#\176kD\tR3Ƿ\159\190\194D\11&\225\235\177ö́~\28YW\229\215\227\192p_\132[H''\r\tg&\208~\182i\190^\153\2298\191\155\149 \164\8\129\238\254>3\6\237\174\1\250\136PĀ6\208z%\174\167\150\244J昍3\159\14%u\243 o\19\0297\178\240\146\186V\143#0\232oL\r\254\26\3\186E\165\191jo\228y\240\189>\1\223Q\1460\235|U\27\21\148n5\220<\19kz=\23\242\179\226\198-\171\190b\21\3[)R\28\210o\0071\240\131\214z\27O\177ܱ\253\160\246\nju;\239\219j$i\15\147\228\219^\20'\229\181d\229\148\208fA\t\28*ҡ\181\18877\174\243\150K\200A\188\212^\169z\1\139\143\231\138# \127/\203ަx\170\169\155\209\2\253`G߭~\230\147{3Il\245\150~\255\0´\191$\151\127\171K%\150\26\237\\\17\5E'bɯOd\251\164\204\226Q\\\30,˪:\236~\239~\\\150\n\21225\145\159\144)\159\241SH\158\255\168b~y<\201<Z\235\172g\23v\155n\147\204\23ɍ\254#\188\146'\181\127\7 \226\143\253\2K\160-\179\165yX\205<q\129\129DGNy\201>$@\183\196*\180[([\28\194gՎ\181?\158\198X\177\136\2244\164\175\157\229\155u4~\169\152\209Rq[\146} S7ӽ\136Mk0\24\222;=*\1l:9\rvc\2521\225\0\238\242t\16&\141\148 \1798#c\129\152\221\200\218\216,\7[1\245\153\156\134c\220,\198\2038\182h\16\12\1781\144\1749_\131#\211R\201\8ʗ\145JUSr\206\19\209C\22\207x%\182\191\206\209\3M\201꞉\152\141\r\253\198:\199\8\144\23+4\12\129\242A\160\1408\154\131Z\183\252YfO+\157\176\187^\"@\150\254\139\246\158\184\26\174<\0\182\230\151V3\222\29\236\128\234qz\153\15\199\14Oe\30\153E\209>\252M\180\189/|\179\158ey\129\143\11\202r)\18\194ݹG\183=\157\6\174"),
		[55.85] = {},
		[45165] = 2,
		[39158] = "a",
		[41.42] = 2814924513,
		[0.59] = 0.2,
		[41908] = nil --[[ constant not decoded ]],
		[0.22] = 90965,
		[68168] = 4653,
	}, 356)

	error("devirt: len of 25411 (at 42:54)")
end

local v, v2, v3 = ...
local n = 1836344640
local n2 = 401899866
local kind = type(v)
upv3("userdata", kind)

if not nil then
	upv4(428232913, 4)
	local v4 = bit32.bxor(v2, upv8)
	upv5 = 360773031
	upv6()
	v2 = bit32.bxor(v4, 461369130)
end

local kind2 = typeof(v)
upv3("Instance", kind2)

if not nil then
	upv4(428232913, 4)
	upv5 = 360773031
	upv6()
end

local parent = v.Parent
local parent2 = v.Parent

if upv7[not parent] then
	upv3(parent, parent2)

	if not nil then
		upv4(428232913, 4)
		upv5 = 360773031
		upv6()
	end

	local flag = bit32.bxor(n2, 530027042) == 140710776
end

local name = v.Name
local name2 = v.Name
local kind3 = type(name)
upv3("string", kind3)

if not nil then
	local v4 = upv4
	local v5 = bit32.bor(n2, v2)
	v4(428232913, 4)
	upv5 = 360773031
	upv6()
	n2 = bit32.bxor(v5, 134297248)
end

upv3(name, name2)

if not nil then
	upv4(428232913, 4)
	upv5 = 360773031
	upv6()
end

local n3 = #name2
upv3(#name, n3)

if not nil then
	upv4(428232913, 4)
	upv5 = 360773031
	upv6()
end

upv3(tostring(v), name)

if not nil then
	upv4(428232913, 4)
	upv5 = 360773031
	upv6()
end

upv3(v3, v.ClassName)

if not nil then
	upv4(428232913, 4)
	upv5 = 360773031
	local v4 = bit32.bxor(n, n2)
	upv6()
	n = v4 + nil --[[ constant not decoded ]]
end

local changed = v.Changed
upv3(changed, v.Changed)

if nil then
	upv4(428232913, 4)
	upv5 = 360773031
	upv6()
end

if not nil then
	upv4(428232913, 4)
	upv5 = 360773031
	upv6()
end

local connect = changed.Connect
local connect2 = changed.Connect
upv1(connect, "Connect")
upv1(connect2, "Connect")
upv3(connect, connect2)

if nil then
	upv4(428232913, 4)
	upv5 = 360773031
	upv6()
end

local flag = false
local childAdded = v.ChildAdded
local v4 = childAdded
local connect3 = childAdded.Connect
local v5 = bit32.bxor(v2, 451617348)

local function fn()
	flag = true

	if nil then
		v5 = bit32.bxor(v5, 4025049115)
	end
end

v5 = bit32.bxor(v5, n2 - 48271672)
local v6 = connect3(v4, fn)
local n4 = n + upv8
local disconnect, n5, v7, n6, wait, create, n7, n8, fn2, v8, v9, v10, v11, v12, flag2, flag3, v13, v14, ok, result, v15, flag4, flag5, v16, v17

if nil then
	upv4(-1, 360773031)

	if n4 == 51167422 then
		upv6()
	else
		upv5 = 2147483647
		upv6()

		if not nil then
			upv4(428232913, 4)
			upv5 = 360773031
			local flag6 = upv8 == 218162790
			flag6()
		end

		disconnect = v6.Disconnect
		n5 = bit32.bxor(v2, upv8) + 2685676474
		local v18 = table.pack(bit32.band(n3, 4294967295))
		local v19 = table.pack(bit32.band(v18[1], 65535))
		v7 = bit32.band(11194 * v19[1] + bit32.lshift(bit32.band(11194 * bit32.rshift(v18[1], 16) + 40980 * v19[1], 65535), 16), 4294967295)
		local v20 = table.pack(bit32.band(bit32.bnot(n3), 4294967295))
		local v21 = table.pack(bit32.band(v20[1], 65535))
		n6 = n5 + v7 + bit32.band(11194 * v21[1] + bit32.lshift(bit32.band(11194 * bit32.rshift(v20[1], 16) + 40980 * v21[1], 65535), 16), 4294967295)
		upv1(disconnect, "Disconnect")
		upv2(disconnect, nil)
		disconnect(v6)

		if nil then
			upv4(428232913, 4)
			upv5 = 360773031
			upv6()
		end

		wait = changed.Wait
		upv1(wait, "Wait")
		create = coroutine.create
		n7 = bit32.band(n2, upv8)
		n8 = n7 + 4143418584

		fn2 = function()
			local v22 = wait
			local v23 = changed

			if nil then
				n8 = bit32.bxor(n8, 3383456327)
			end

			return (v22(v23))
		end

		v8 = bit32.bxor(n4, 2200641411)
		n8 = bit32.bxor(n8, v8)
		v9 = create(fn2)
		local v22
		v10, v22 = coroutine.resume(v9)
		v11 = v22
		v12 = upv7[not v10]
		flag2 = not v12

		if v12 then
			flag3 = upv7[not v11]
		else
			flag3 = flag2
		end

		if not flag3 then
			v13 = coroutine.status(v9)
			flag3 = not upv3("suspended", v13)
		end

		if flag3 then
			upv4(428232913, 4)
			v14 = bit32.bxor(n7, upv8)
			upv5 = 360773031
			upv6()
			n7 = v14 - 4103531798
		end

		local result2
		ok, result2 = pcall(coroutine.close, v9)
		result = result2
		v15 = upv7[not ok]
		flag4 = not v15

		if v15 then
			flag5 = not upv7[not result]
		else
			flag5 = flag4
		end

		if not flag5 then
			v16 = coroutine.status(v9)
			flag5 = not upv3("dead", v16)
		end

		if flag5 then
			upv4(428232913, 4)
			upv5 = 360773031
			upv6()
		end

		v17 = getmetatable(v)
		upv3("The metatable is locked", v17)

		if not nil then
			upv4(428232913, 4)
			changed = "HttpService"
			upv6()
			return
		end
	end
else
	if not nil then
		upv4(428232913, 4)

		upv5 = 360773031
		;(upv8 == 218162790)()
	end

	disconnect = v6.Disconnect
	n5 = bit32.bxor(v2, upv8) + 2685676474
	local v18 = table.pack(bit32.band(n3, 4294967295))
	local v19 = table.pack(bit32.band(v18[1], 65535))
	v7 = bit32.band(11194 * v19[1] + bit32.lshift(bit32.band(11194 * bit32.rshift(v18[1], 16) + 40980 * v19[1], 65535), 16), 4294967295)
	local v20 = table.pack(bit32.band(bit32.bnot(n3), 4294967295))
	local v21 = table.pack(bit32.band(v20[1], 65535))
	n6 = n5 + v7 + bit32.band(11194 * v21[1] + bit32.lshift(bit32.band(11194 * bit32.rshift(v20[1], 16) + 40980 * v21[1], 65535), 16), 4294967295)
	upv1(disconnect, "Disconnect")
	upv2(disconnect, nil)
	disconnect(v6)

	if nil then
		upv4(428232913, 4)
		upv5 = 360773031
		upv6()
	end

	wait = changed.Wait
	upv1(wait, "Wait")
	create = coroutine.create
	n7 = bit32.band(n2, upv8)
	n8 = n7 + 4143418584

	fn2 = function()
		local v22 = wait
		local v23 = changed

		if nil then
			n8 = bit32.bxor(n8, 3383456327)
		end

		return (v22(v23))
	end

	v8 = bit32.bxor(n4, 2200641411)
	n8 = bit32.bxor(n8, v8)
	v9 = create(fn2)
	v10, v11 = coroutine.resume(v9)
	v12 = upv7[not v10]
	flag2 = not v12

	if v12 then
		flag3 = upv7[not v11]
	else
		flag3 = flag2
	end

	if not flag3 then
		v13 = coroutine.status(v9)
		flag3 = not upv3("suspended", v13)
	end

	if flag3 then
		upv4(428232913, 4)
		v14 = bit32.bxor(n7, upv8)
		upv5 = 360773031
		upv6()
		n7 = v14 - 4103531798
	end

	ok, result = pcall(coroutine.close, v9)
	v15 = upv7[not ok]
	flag4 = not v15

	if v15 then
		flag5 = not upv7[not result]
	else
		flag5 = flag4
	end

	if not flag5 then
		v16 = coroutine.status(v9)
		flag5 = not upv3("dead", v16)
	end

	if flag5 then
		upv4(428232913, 4)
		upv5 = 360773031
		upv6()
	end

	v17 = getmetatable(v)
	upv3("The metatable is locked", v17)

	if not nil then
		upv4(428232913, 4)
		changed = "HttpService"
		upv6()
		return
	end
end
