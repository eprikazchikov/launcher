import qbs

Project {
    id: archive
    property stringList srcFiles: [
        "src/7zip/**/*.cpp"
    ]

    property stringList incPaths: [

    ]

    StaticLibrary {
        name: "7zip"
        files: archive.srcFiles
        Depends { name: "cpp" }
        Depends { name: "bundle" }
        bundle.isBundle: false

        cpp.defines: [ ]
        cpp.includePaths: archive.incPaths
        cpp.cxxLanguageVersion: "c++14"
        cpp.cxxStandardLibrary: "libc++"
    }
}
