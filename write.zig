const std = @import("std");

const HashMap = std.AutoHashMap;

const SynthDef = struct {
    name: []const u8,
    func: fn () void,
    controls: HashMap([]const u8, u8), // maybe
    controlNames: [][]const u8, // ugens add to this
    allControlNames: [][]const u8,
    controlIndex: usize,
    children: []SynthDef,
    //
    // var constants;
    // var constantSet;
    // var maxLocalBufs;
    //
    // // topo sort
    // var available;
    // var variants;
    // var widthFirstUGens;
    // var rewriteInProgress;
    //
    // var desc;
    // var metadata;

    synthDefDir: []const u8,
    warnAboutLargeSynthDefs: bool,
};
