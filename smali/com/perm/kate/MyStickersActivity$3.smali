.class Lcom/perm/kate/MyStickersActivity$3;
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

    .line 89
    iput-object p1, p0, Lcom/perm/kate/MyStickersActivity$3;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 92
    iget-object p1, p0, Lcom/perm/kate/MyStickersActivity$3;->this$0:Lcom/perm/kate/MyStickersActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity$3;->this$0:Lcom/perm/kate/MyStickersActivity;

    const-class v2, Lcom/perm/kate/AddStickersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
