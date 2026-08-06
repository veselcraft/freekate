.class Lcom/perm/kate/BaseActivity$11;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$11;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1154
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/BaseActivity$11;->this$0:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/PlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1155
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/BaseActivity$11;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 1156
    return-void
.end method
