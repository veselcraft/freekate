.class Lcom/perm/kate/BlockActivity$2;
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
    .line 86
    iput-object p1, p0, Lcom/perm/kate/BlockActivity$2;->this$0:Lcom/perm/kate/BlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/perm/kate/BlockActivity$2;->this$0:Lcom/perm/kate/BlockActivity;

    invoke-static {v0}, Lcom/perm/kate/BlockActivity;->access$100(Lcom/perm/kate/BlockActivity;)V

    .line 90
    return-void
.end method
