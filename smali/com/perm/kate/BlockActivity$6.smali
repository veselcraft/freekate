.class Lcom/perm/kate/BlockActivity$6;
.super Ljava/lang/Object;
.source "BlockActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlockActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlockActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BlockActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/perm/kate/BlockActivity$6;->this$0:Lcom/perm/kate/BlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 165
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    sparse-switch p2, :sswitch_data_0

    .line 176
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 170
    :sswitch_0
    iget-object v0, p0, Lcom/perm/kate/BlockActivity$6;->this$0:Lcom/perm/kate/BlockActivity;

    invoke-static {v0}, Lcom/perm/kate/BlockActivity;->access$100(Lcom/perm/kate/BlockActivity;)V

    .line 171
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
