.class Lcom/perm/kate/AttachmentsHelper$3;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$3;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 915
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$3;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/AttachmentsHelper;->videoClick(Landroid/view/View;)V

    .line 916
    return-void
.end method
