# Settings

This document details the project settings exposed by this extension as well as which of the
default project settings are relevant.

⚠️ Make sure you enable "Advanced Settings" in the top-right corner of the project settings window
in order to see the settings listed here.

## Table of Contents

- [Common](#common)
- [3D](#3d)
- [Jolt 3D](#jolt-3d)

## Common

These settings are part of Godot's default project settings and can be found under "Physics" -
"Common".

<table>
  <thead>
    <tr>
      <th>Category</th>
      <th>Name</th>
      <th>Supported</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>-</td>
      <td>Physics Ticks per Second</td>
      <td>Yes</td>
      <td>-</td>
    </tr>
    <tr>
      <td>-</td>
      <td>Max Physics Steps per Frame</td>
      <td>Yes</td>
      <td>-</td>
    </tr>
    <tr>
      <td>-</td>
      <td>Enable Object Picking</td>
      <td>Yes</td>
      <td>-</td>
    </tr>
  </tbody>
</table>

## 3D

These settings are part of Godot's default project settings and can be found under "Physics" - "3D".

<table>
  <thead>
    <tr>
      <th>Category</th>
      <th>Name</th>
      <th>Supported</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>-</td>
      <td>Run on Separate Thread</td>
      <td>No</td>
      <td>-</td>
    </tr>
    <tr>
      <td>-</td>
      <td>Physics Engine</td>
      <td>Yes</td>
      <td>-</td>
    </tr>
    <tr>
      <td>-</td>
      <td>Default Gravity</td>
      <td>Yes</td>
      <td>-</td>
    </tr>
    <tr>
      <td>-</td>
      <td>Default Gravity Vector</td>
      <td>Yes</td>
      <td>-</td>
    </tr>
    <tr>
      <td>-</td>
      <td>Default Linear Damp</td>
      <td>Yes</td>
      <td>-</td>
    </tr>
    <tr>
      <td>-</td>
      <td>Default Angular Damp</td>
      <td>Yes</td>
      <td>-</td>
    </tr>
    <tr>
      <td>-</td>
      <td>Sleep Threshold Linear</td>
      <td>No</td>
      <td>See extension settings <a href="#jolt-3d">below</a>.</td>
    </tr>
    <tr>
      <td>-</td>
      <td>Sleep Threshold Angular</td>
      <td>No</td>
      <td>See extension settings <a href="#jolt-3d">below</a>.</td>
    </tr>
    <tr>
      <td>-</td>
      <td>Time Before Sleep</td>
      <td>No</td>
      <td>See extension settings <a href="#jolt-3d">below</a>.</td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Solver Iterations</td>
      <td>No</td>
      <td>See extension settings <a href="#jolt-3d">below</a>.</td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Contact Recycle Radius</td>
      <td>No</td>
      <td>-</td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Contact Max Separation</td>
      <td>No</td>
      <td>-</td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Contact Max Allowed Penetration</td>
      <td>No</td>
      <td>See extension settings <a href="#jolt-3d">below</a>.</td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Default Contact Bias</td>
      <td>No</td>
      <td>-</td>
    </tr>
  </tbody>
</table>

## Jolt 3D

These settings are exposed by Godot Jolt and can be found under "Physics" - "Jolt 3D".

<table>
  <thead>
    <tr>
      <th>Category</th>
      <th>Name</th>
      <th>Description</th>
      <th>Notes</th>
    <tr>
  </thead>
  <tbody>
    <tr>
      <td>Sleep</td>
      <td>Enabled</td>
      <td>
        Whether bodies are allowed to go to sleep.
      </td>
      <td>-</td>
    </tr>
    <tr>
      <td>Sleep</td>
      <td>Velocity Threshold</td>
      <td>
        The point velocity on a body's bounding box below which a body can be considered sleeping.
      </td>
      <td>-</td>
    </tr>
    <tr>
      <td>Sleep</td>
      <td>Time Threshold</td>
      <td>
        Time spent below the velocity threshold after which a body can be considered sleeping.
      </td>
      <td>-</td>
    </tr>
    <tr>
      <td>Collisions</td>
      <td>Use Shape Margins</td>
      <td>
        Whether or not the <code>margin</code> property on <code>Shape3D</code> should be respected
        for the applicable convex shape types.
      </td>
      <td>
        When disabled this will force a shape margin of 0, trading in performance for accuracy,
        which can make things like collision normals more intuitive.
        <br><br>This only applies to <code>BoxShape3D</code>, <code>CylinderShape3D</code> and
        <code>ConvexPolygonShape3D</code>. Other shape types do not utilize margins.
      </td>
    </tr>
    <tr>
      <td>Collisions</td>
      <td>Areas Detect Static Bodies</td>
      <td>
        Whether or not <code>Area3D</code> is able to detect overlaps with <code>StaticBody3D</code>
        and <code>RigidBody3D</code> frozen with <code>FREEZE_MODE_STATIC</code>.
      </td>
      <td>
        ⚠️ This can come at a heavy performance and memory cost if you allow many/large areas to
        overlap with complex static geometry, such as <code>ConcavePolygonShape3D</code> or
        <code>HeightMapShape3D</code>.
        <br><br>It is strongly recommended that you set up your collision layers and masks in such a
        way that only a few small <code>Area3D</code> can detect static bodies.
      </td>
    </tr>
    <tr>
      <td>Continuous CD</td>
      <td>Movement Threshold</td>
      <td>
        Percentage of its inner radius a body must move per step to make use of CCD.
      </td>
      <td>-</td>
    </tr>
    <tr>
      <td>Continuous CD</td>
      <td>Max Penetration</td>
      <td>
        Percentage of its inner radius a body may penetrate another body whilst using CCD.
      </td>
      <td>-</td>
    </tr>
    <tr>
      <td>Kinematics</td>
      <td>Recovery Iterations</td>
      <td>
        The number of iterations to run when resolving penetration during things like
        <code>move_and_slide</code>.
      </td>
      <td>-</td>
    </tr>
    <tr>
      <td>Kinematics</td>
      <td>Recovery Amount</td>
      <td>
        How much of the penetration to correct per iteration during things like
        <code>move_and_slide</code>.
      </td>
      <td>-</td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Velocity Iterations</td>
      <td>The number of solver velocity iterations to run during a physics tick.</td>
      <td>-</td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Position Iterations</td>
      <td>The number of solver position iterations to run during a physics tick.</td>
      <td>-</td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Position Correction</td>
      <td>
        How much of the position error to correct during a physics tick.
      </td>
      <td>-</td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Active Edge Threshold</td>
      <td>
        The cut-off angle for the active edge detection.
      </td>
      <td>
        This angle determines whether or not an edge between two triangles in either a
        <code>ConcavePolygonShape3D</code> or <code>HeightMapShape3D</code> will be considered
        "active" or "inactive", where contact with an inactive edge will have its normal overridden
        to instead be the surface normal of the triangle.
        <br><br>Setting this too low can result in ghost collisions. Setting this too high can
        result in things like <code>RigidBody3D</code> sinking into triangle edges or
        <code>move_and_slide</code> behaving in weird ways when going over or pressing up against
        triangle edges.
      </td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Bounce Velocity Threshold</td>
      <td>
        The minimum velocity needed before a collision can be elastic.
      </td>
      <td>-</td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Contact Speculative Distance</td>
      <td>
        Radius around objects, inside which speculative contact points will be detected.
      </td>
      <td>
        Setting this too high will result in ghost collisions, as speculative contacts are based on
        the closest points during the collision detection step which may not be the actual closest
        points by the time the two objects hit.
      </td>
    </tr>
    <tr>
      <td>Solver</td>
      <td>Contact Allowed Penetration</td>
      <td>How much bodies are allowed to penetrate eachother.</td>
      <td>-</td>
    </tr>
    <tr>
      <td>Limits</td>
      <td>Max Linear Velocity</td>
      <td>The maximum linear velocity that a body can reach.</td>
      <td>Meant to prevent the simulation from exploding if something goes wrong.</td>
    </tr>
    <tr>
      <td>Limits</td>
      <td>Max Angular Velocity</td>
      <td>The maximum angular velocity that a body can reach.</td>
      <td>Meant to prevent the simulation from exploding if something goes wrong.</td>
    </tr>
    <tr>
      <td>Limits</td>
      <td>Max Bodies</td>
      <td>The maximum number of bodies to support, awake or otherwise.</td>
      <td>
        When this limit is exceeded a warning is emitted and anything past that point is undefined
        behavior.
        <br><br>⚠️ This also applies within the editor.
      </td>
    </tr>
    <tr>
      <td>Limits</td>
      <td>Max Body Pairs</td>
      <td>The maximum number of body pairs to allow processing of.</td>
      <td>
        When this limit is exceeded a warning is emitted and any additional body pairs will be
        ignored.
      </td>
    </tr>
    <tr>
      <td>Limits</td>
      <td>Max Contact Constraints</td>
      <td>The maximum number of contact constraints to allow processing of.</td>
      <td>
        When this limit is exceeded a warning is emitted and any additional contacts will be
        ignored.
      </td>
    </tr>
    <tr>
      <td>Limits</td>
      <td>Max Temporary Memory</td>
      <td>
        The amount of memory to pre-allocate for the stack-allocator used within a physics tick.
      </td>
      <td>
        When this limit is exceeded a warning is emitted and any additional allocations will fall
        back to a much slower general-purpose allocator.
      </td>
    </tr>
  </tbody>
</table>
