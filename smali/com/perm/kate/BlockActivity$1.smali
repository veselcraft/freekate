.class Lcom/perm/kate/BlockActivity$1;
.super Ljava/lang/Object;
.source "BlockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlockActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 75
    iput-object p1, p0, Lcom/perm/kate/BlockActivity$1;->this$0:Lcom/perm/kate/BlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/perm/kate/BlockActivity$1;->this$0:Lcom/perm/kate/BlockActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/BlockActivity;->access$000(Lcom/perm/kate/BlockActivity;Z)V

    .line 79
    return-void
.end method
