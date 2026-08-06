.class Lcom/perm/kate/BlockActivity$7;
.super Ljava/lang/Object;
.source "BlockActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 189
    iput-object p1, p0, Lcom/perm/kate/BlockActivity$7;->this$0:Lcom/perm/kate/BlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 197
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/perm/kate/BlockActivity$7;->this$0:Lcom/perm/kate/BlockActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/BlockActivity;->access$000(Lcom/perm/kate/BlockActivity;Z)V

    .line 195
    return-void
.end method
