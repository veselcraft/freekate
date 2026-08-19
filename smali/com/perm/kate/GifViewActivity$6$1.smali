.class Lcom/perm/kate/GifViewActivity$6$1;
.super Lcom/perm/kate/session/Callback;
.source "GifViewActivity.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GifViewActivity$6;


# direct methods
.method constructor <init>(Lcom/perm/kate/GifViewActivity$6;Landroid/app/Activity;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity$6$1;->this$0:Lcom/perm/kate/GifViewActivity$6;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 439
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity$6$1;->this$0:Lcom/perm/kate/GifViewActivity$6;

    iget-object p1, p1, Lcom/perm/kate/GifViewActivity$6;->val$activity:Lcom/perm/kate/BaseActivity;

    const v0, 0x7f0f00c8

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method
