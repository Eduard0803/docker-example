def main():
	import requests

	url = 'https://eduard0803.github.io'
	response = requests.get(url)

	if response.status_code != 200:
		print('Error\n')
		return

	with open('index.html', 'w') as file:
		file.write(response.text)
		file.close()
	print('Success\n')

if __name__ == '__main__':
	main()

