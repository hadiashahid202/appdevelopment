<!DOCTYPE html>
<html>
<head>
    <title>Add About Section</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="max-w-md w-full bg-white p-8 rounded-lg shadow-lg">
        <!-- Title -->
        <h1 class="text-2xl font-bold text-gray-800 mb-6 text-center">Add About Section</h1>

        <?php if (!empty($message)) : ?>
            <div class="mb-4 p-4 text-white <?php echo strpos($message, 'Error') === false ? 'bg-green-500' : 'bg-red-500'; ?> rounded-md">
                <?php echo $message; ?>
            </div>
        <?php endif; ?>

        <form action="add_about_section.php" method="POST" class="space-y-3">
            <!-- About Section Info -->
            <div>
                <label for="heading" class="block text-lg font-medium text-gray-700">Heading</label>
                <input type="text" name="heading" id="heading" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div>
                <label for="title" class="block text-lg font-medium text-gray-700">Title</label>
                <input type="text" name="title" id="title" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div>
                <label for="paragraph" class="block text-lg font-medium text-gray-700">Paragraph</label>
                <textarea name="paragraph" id="paragraph" rows="4" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"></textarea>
            </div>

            <div>
                <label for="link" class="block text-lg font-medium text-gray-700">Link Text</label>
                <input type="text" name="link" id="link" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div>
                <label for="img" class="block text-lg font-medium text-gray-700">Image Name</label>
                <input type="text" name="img" id="img" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div>
                <label for="desc" class="block text-lg font-medium text-gray-700">Description</label>
                <textarea name="desc" id="desc" rows="2" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"></textarea>
            </div>

            <div>
                <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                    Add Section
                </button>
            </div>
        </form>
    </div>
</body>
</html>
