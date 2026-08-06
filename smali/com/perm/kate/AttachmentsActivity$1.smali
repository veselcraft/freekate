.class Lcom/perm/kate/AttachmentsActivity$1;
.super Ljava/lang/Object;
.source "AttachmentsActivity.java"

# interfaces
.implements Lcom/perm/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AttachmentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsActivity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity$1;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity$1;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsActivity;->access$000(Lcom/perm/kate/AttachmentsActivity;)Lcom/perm/kate/AttachmentsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity$1;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsActivity;->access$000(Lcom/perm/kate/AttachmentsActivity;)Lcom/perm/kate/AttachmentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsAdapter;->notifyDataSetChanged()V

    .line 60
    :cond_0
    return-void
.end method
