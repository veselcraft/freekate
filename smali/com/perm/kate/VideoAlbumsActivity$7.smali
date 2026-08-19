.class Lcom/perm/kate/VideoAlbumsActivity$7;
.super Lcom/perm/kate/session/Callback;
.source "VideoAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$7;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 212
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 214
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$7;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {p1}, Lcom/perm/kate/VideoAlbumsActivity;->access$900(Lcom/perm/kate/VideoAlbumsActivity;)V

    :cond_0
    return-void
.end method
