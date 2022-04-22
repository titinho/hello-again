/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2022 Titusz Ozsváth <titusz.ozsvath@tutamail.com>
 */

 public class HelloAgain : Gtk.Application {
    public HelloAgain () {
        Object (
            application_id: "com.github.titinho.hello-again",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello Again!"
        };

        var label = new Gtk.Label("Hello Again World!");

        main_window.add (label);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new HelloAgain ().run (args);
    }
}
