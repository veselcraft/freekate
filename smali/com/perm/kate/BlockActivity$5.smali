.class Lcom/perm/kate/BlockActivity$5;
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
    .line 144
    iput-object p1, p0, Lcom/perm/kate/BlockActivity$5;->this$0:Lcom/perm/kate/BlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 147
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 148
    sparse-switch p2, :sswitch_data_0

    .line 158
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 152
    :sswitch_0
    iget-object v1, p0, Lcom/perm/kate/BlockActivity$5;->this$0:Lcom/perm/kate/BlockActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/BlockActivity;->access$000(Lcom/perm/kate/BlockActivity;Z)V

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
