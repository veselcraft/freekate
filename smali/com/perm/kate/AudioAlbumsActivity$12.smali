.class Lcom/perm/kate/AudioAlbumsActivity$12;
.super Lcom/perm/kate/session/Callback;
.source "AudioAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioAlbumsActivity;->lambda$moveToAlbum$0(Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$12;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 379
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$12;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 380
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$12;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
