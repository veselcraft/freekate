.class Lcom/perm/kate/GifViewActivity$6$1;
.super Lcom/perm/kate/session/Callback;
.source "GifViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GifViewActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GifViewActivity$6;


# direct methods
.method constructor <init>(Lcom/perm/kate/GifViewActivity$6;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GifViewActivity$6;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity$6$1;->this$0:Lcom/perm/kate/GifViewActivity$6;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$6$1;->this$0:Lcom/perm/kate/GifViewActivity$6;

    iget-object v0, v0, Lcom/perm/kate/GifViewActivity$6;->val$activity:Lcom/perm/kate/BaseActivity;

    const v1, 0x7f070090

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 441
    return-void
.end method
