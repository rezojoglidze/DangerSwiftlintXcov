import Danger 
let danger = Danger()

let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \(editedFiles.joined(separator: ", "))")

for file in editedFiles {
    where danger.utils.readFile(file).contains("Copyringt ") {
        warn("Remove please copyright at file \(file.name)")
    }
}
