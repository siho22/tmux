# $OpenBSD$

PROG=	tmux
SRCS=	attributes.c cfg.c client.c clock.c \
	cmd-attach-session.c cmd-bind-key.c \
	cmd-break-pane.c cmd-choose-session.c cmd-choose-window.c \
	cmd-clear-history.c cmd-clock-mode.c cmd-command-prompt.c \
	cmd-confirm-before.c cmd-copy-buffer.c cmd-copy-mode.c \
	cmd-delete-buffer.c cmd-detach-client.c cmd-down-pane.c \
	cmd-find-window.c cmd-generic.c cmd-has-session.c cmd-kill-pane.c \
	cmd-kill-server.c cmd-kill-session.c cmd-kill-window.c \
	cmd-last-window.c cmd-link-window.c cmd-list-buffers.c \
	cmd-list-clients.c cmd-list-commands.c cmd-list-keys.c \
	cmd-list-sessions.c cmd-list-windows.c cmd-list-panes.c \
	cmd-list.c cmd-load-buffer.c cmd-join-pane.c \
	cmd-lock-server.c cmd-lock-client.c cmd-lock-session.c \
	cmd-move-window.c cmd-new-session.c cmd-new-window.c \
	cmd-next-layout.c cmd-next-window.c cmd-paste-buffer.c \
	cmd-previous-layout.c cmd-previous-window.c cmd-refresh-client.c \
	cmd-rename-session.c cmd-rename-window.c cmd-resize-pane.c \
	cmd-respawn-window.c cmd-rotate-window.c cmd-save-buffer.c \
	cmd-select-layout.c cmd-select-pane.c \
	cmd-select-prompt.c cmd-select-window.c cmd-send-keys.c \
	cmd-send-prefix.c cmd-server-info.c cmd-set-buffer.c cmd-set-option.c \
	cmd-set-window-option.c cmd-show-buffer.c cmd-show-messages.c \
	cmd-show-options.c cmd-show-window-options.c cmd-source-file.c \
	cmd-split-window.c cmd-start-server.c cmd-string.c cmd-if-shell.c \
	cmd-run-shell.c cmd-suspend-client.c cmd-swap-pane.c cmd-swap-window.c \
	cmd-switch-client.c cmd-unbind-key.c cmd-unlink-window.c \
	cmd-set-environment.c cmd-show-environment.c cmd-choose-client.c \
	cmd-up-pane.c cmd-display-message.c cmd-display-panes.c \
	cmd-pipe-pane.c cmd-capture-pane.c cmd.c \
	colour.c environ.c grid-view.c grid-utf8.c grid.c input-keys.c \
	imsg.c imsg-buffer.c input.c key-bindings.c key-string.c \
	layout-set.c layout-string.c layout.c log.c job.c \
	mode-key.c names.c options.c paste.c procname.c \
	resize.c screen-redraw.c screen-write.c screen.c session.c status.c \
	server-fn.c server.c server-client.c server-window.c \
	tmux.c tty-keys.c tty-term.c tty.c utf8.c \
	window-choose.c window-clock.c window-copy.c window-more.c window.c \
	xterm-keys.c xmalloc.c

CDIAGFLAGS+= -Wno-long-long -Wall -W -Wnested-externs -Wformat=2
CDIAGFLAGS+= -Wmissing-prototypes -Wstrict-prototypes -Wmissing-declarations
CDIAGFLAGS+= -Wwrite-strings -Wshadow -Wpointer-arith -Wsign-compare
CDIAGFLAGS+= -Wundef -Wbad-function-cast -Winline -Wcast-align

LDADD=  -lutil -lcurses -levent
DPADD=  ${LIBUTIL} ${LIBCURSES} ${LIBEVENT}

.include <bsd.prog.mk>
