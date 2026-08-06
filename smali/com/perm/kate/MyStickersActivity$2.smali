.class Lcom/perm/kate/MyStickersActivity$2;
.super Ljava/lang/Object;
.source "MyStickersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MyStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MyStickersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MyStickersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MyStickersActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/perm/kate/MyStickersActivity$2;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/perm/kate/MyStickersActivity$2;->this$0:Lcom/perm/kate/MyStickersActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/perm/kate/MyStickersActivity$2;->this$0:Lcom/perm/kate/MyStickersActivity;

    const-class v3, Lcom/perm/kate/AddStickersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/MyStickersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    return-void
.end method
