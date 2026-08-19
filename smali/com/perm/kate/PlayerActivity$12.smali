.class Lcom/perm/kate/PlayerActivity$12;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$12;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 578
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity$12;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {p1}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$12;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/PlayerActivity;->setRepeat(Landroid/content/Context;I)V

    .line 583
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity$12;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {p1}, Lcom/perm/kate/PlayerActivity;->access$1200(Lcom/perm/kate/PlayerActivity;)V

    .line 584
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity$12;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-virtual {p1}, Lcom/perm/kate/PlayerActivity;->onChangeRepeatState()V

    return-void
.end method
