.class Lcom/perm/kate/PollCreateActivity$7;
.super Ljava/lang/Object;
.source "PollCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollCreateActivity;->onConfirmCancel()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollCreateActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$7;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$7;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
