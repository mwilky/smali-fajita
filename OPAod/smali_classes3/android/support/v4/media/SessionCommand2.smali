.class public final Landroid/support/v4/media/SessionCommand2;
.super Ljava/lang/Object;
.source "SessionCommand2.java"


# static fields
.field public static final COMMAND_CODE_CUSTOM:I = 0x0

.field public static final COMMAND_CODE_LIBRARY_GET_CHILDREN:I = 0x1d

.field public static final COMMAND_CODE_LIBRARY_GET_ITEM:I = 0x1e

.field public static final COMMAND_CODE_LIBRARY_GET_LIBRARY_ROOT:I = 0x1f

.field public static final COMMAND_CODE_LIBRARY_GET_SEARCH_RESULT:I = 0x20

.field public static final COMMAND_CODE_LIBRARY_SEARCH:I = 0x21

.field public static final COMMAND_CODE_LIBRARY_SUBSCRIBE:I = 0x22

.field public static final COMMAND_CODE_LIBRARY_UNSUBSCRIBE:I = 0x23

.field public static final COMMAND_CODE_PLAYBACK_PAUSE:I = 0x2

.field public static final COMMAND_CODE_PLAYBACK_PLAY:I = 0x1

.field public static final COMMAND_CODE_PLAYBACK_PREPARE:I = 0x6

.field public static final COMMAND_CODE_PLAYBACK_RESET:I = 0x3

.field public static final COMMAND_CODE_PLAYBACK_SEEK_TO:I = 0x9

.field public static final COMMAND_CODE_PLAYBACK_SET_SPEED:I = 0x27

.field public static final COMMAND_CODE_PLAYLIST_ADD_ITEM:I = 0xf

.field public static final COMMAND_CODE_PLAYLIST_GET_CURRENT_MEDIA_ITEM:I = 0x14

.field public static final COMMAND_CODE_PLAYLIST_GET_LIST:I = 0x12

.field public static final COMMAND_CODE_PLAYLIST_GET_LIST_METADATA:I = 0x14

.field public static final COMMAND_CODE_PLAYLIST_REMOVE_ITEM:I = 0x10

.field public static final COMMAND_CODE_PLAYLIST_REPLACE_ITEM:I = 0x11

.field public static final COMMAND_CODE_PLAYLIST_SET_LIST:I = 0x13

.field public static final COMMAND_CODE_PLAYLIST_SET_LIST_METADATA:I = 0x15

.field public static final COMMAND_CODE_PLAYLIST_SET_REPEAT_MODE:I = 0xe

.field public static final COMMAND_CODE_PLAYLIST_SET_SHUFFLE_MODE:I = 0xd

.field public static final COMMAND_CODE_PLAYLIST_SKIP_TO_NEXT_ITEM:I = 0x4

.field public static final COMMAND_CODE_PLAYLIST_SKIP_TO_PLAYLIST_ITEM:I = 0xc

.field public static final COMMAND_CODE_PLAYLIST_SKIP_TO_PREV_ITEM:I = 0x5

.field public static final COMMAND_CODE_SESSION_FAST_FORWARD:I = 0x7

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_MEDIA_ID:I = 0x16

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_SEARCH:I = 0x18

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_URI:I = 0x17

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_MEDIA_ID:I = 0x19

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_SEARCH:I = 0x1b

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_URI:I = 0x1a

.field public static final COMMAND_CODE_SESSION_REWIND:I = 0x8

.field public static final COMMAND_CODE_SESSION_SELECT_ROUTE:I = 0x26

.field public static final COMMAND_CODE_SESSION_SET_RATING:I = 0x1c

.field public static final COMMAND_CODE_SESSION_SUBSCRIBE_ROUTES_INFO:I = 0x24

.field public static final COMMAND_CODE_SESSION_UNSUBSCRIBE_ROUTES_INFO:I = 0x25

.field public static final COMMAND_CODE_VOLUME_ADJUST_VOLUME:I = 0xb

.field public static final COMMAND_CODE_VOLUME_SET_VOLUME:I = 0xa

.field private static final KEY_COMMAND_CODE:Ljava/lang/String; = "android.media.media_session2.command.command_code"

.field private static final KEY_COMMAND_CUSTOM_COMMAND:Ljava/lang/String; = "android.media.media_session2.command.custom_command"

.field private static final KEY_COMMAND_EXTRAS:Ljava/lang/String; = "android.media.media_session2.command.extras"


# instance fields
.field private final mCommandCode:I

.field private final mCustomCommand:Ljava/lang/String;

.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput p1, p0, Landroid/support/v4/media/SessionCommand2;->mCommandCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/media/SessionCommand2;->mExtras:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "commandCode shouldn\'t be COMMAND_CODE_CUSTOM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/SessionCommand2;->mCommandCode:I

    iput-object p1, p0, Landroid/support/v4/media/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/media/SessionCommand2;->mExtras:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommand2;
    .locals 4
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-eqz p0, :cond_2

    const-string v0, "android.media.media_session2.command.command_code"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v4/media/SessionCommand2;

    invoke-direct {v1, v0}, Landroid/support/v4/media/SessionCommand2;-><init>(I)V

    return-object v1

    :cond_0
    const-string v1, "android.media.media_session2.command.custom_command"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    return-object v2

    :cond_1
    new-instance v2, Landroid/support/v4/media/SessionCommand2;

    const-string v3, "android.media.media_session2.command.extras"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/support/v4/media/SessionCommand2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/support/v4/media/SessionCommand2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/media/SessionCommand2;

    iget v2, p0, Landroid/support/v4/media/SessionCommand2;->mCommandCode:I

    iget v3, v0, Landroid/support/v4/media/SessionCommand2;->mCommandCode:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/support/v4/media/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v4/media/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getCommandCode()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/SessionCommand2;->mCommandCode:I

    return v0
.end method

.method public getCustomCommand()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/SessionCommand2;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    iget-object v1, p0, Landroid/support/v4/media/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/media/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroid/support/v4/media/SessionCommand2;->mCommandCode:I

    add-int/2addr v1, v2

    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.media_session2.command.command_code"

    iget v2, p0, Landroid/support/v4/media/SessionCommand2;->mCommandCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.media.media_session2.command.custom_command"

    iget-object v2, p0, Landroid/support/v4/media/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.media.media_session2.command.extras"

    iget-object v2, p0, Landroid/support/v4/media/SessionCommand2;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
