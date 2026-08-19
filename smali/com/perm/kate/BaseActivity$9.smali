.class Lcom/perm/kate/BaseActivity$9;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 1151
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$9;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1154
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/BaseActivity$9;->this$0:Lcom/perm/kate/BaseActivity;

    const-class v1, Lcom/perm/kate/PlayerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1155
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$9;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
