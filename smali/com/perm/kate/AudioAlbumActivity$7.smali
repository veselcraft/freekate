.class Lcom/perm/kate/AudioAlbumActivity$7;
.super Ljava/lang/Object;
.source "AudioAlbumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioAlbumActivity;->onConfirmCancel()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumActivity;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$7;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$7;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
