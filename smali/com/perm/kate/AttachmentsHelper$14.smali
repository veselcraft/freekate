.class Lcom/perm/kate/AttachmentsHelper$14;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$14;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$14;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v0, v0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/AttachmentsHelper;->noteClick(Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method
