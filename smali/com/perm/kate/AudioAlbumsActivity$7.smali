.class Lcom/perm/kate/AudioAlbumsActivity$7;
.super Lcom/perm/kate/session/Callback;
.source "AudioAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioAlbumsActivity;
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

    .line 266
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$7;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 269
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$7;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {p1}, Lcom/perm/kate/AudioAlbumsActivity;->access$1300(Lcom/perm/kate/AudioAlbumsActivity;)V

    :cond_0
    return-void
.end method
