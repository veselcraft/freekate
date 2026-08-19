.class Lcom/perm/kate/NewCommentActivity$6;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewCommentActivity;->onConfirmCancel()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$6;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 318
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$6;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
