.class Lcom/perm/kate/AttachmentsHelper$2;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$row:Lcom/perm/kate/api/Sticker;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;Lcom/perm/kate/api/Sticker;Landroid/app/Activity;Landroid/widget/ImageView;)V
    .locals 0

    .line 527
    iput-object p2, p0, Lcom/perm/kate/AttachmentsHelper$2;->val$row:Lcom/perm/kate/api/Sticker;

    iput-object p3, p0, Lcom/perm/kate/AttachmentsHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/perm/kate/AttachmentsHelper$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 530
    new-instance p1, Lcom/perm/kate/AttachmentsHelper$2$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/AttachmentsHelper$2$1;-><init>(Lcom/perm/kate/AttachmentsHelper$2;)V

    .line 585
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
