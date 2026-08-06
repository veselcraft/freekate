.class Lcom/perm/kate/PlayerActivity$11;
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
    .param p1, "this$0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$11;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 576
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity$11;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v1}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result v0

    .line 577
    .local v0, "repeat_value":I
    add-int/lit8 v0, v0, 0x1

    .line 578
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 579
    const/4 v0, 0x0

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity$11;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/PlayerActivity;->setRepeat(Landroid/content/Context;I)V

    .line 581
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity$11;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v1}, Lcom/perm/kate/PlayerActivity;->access$1100(Lcom/perm/kate/PlayerActivity;)V

    .line 582
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity$11;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-virtual {v1}, Lcom/perm/kate/PlayerActivity;->onChangeRepeatState()V

    .line 583
    return-void
.end method
