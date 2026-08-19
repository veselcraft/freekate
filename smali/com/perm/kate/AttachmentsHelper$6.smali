.class Lcom/perm/kate/AttachmentsHelper$6;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 1175
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$6;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1178
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Album;

    .line 1179
    iget-wide v0, p1, Lcom/perm/kate/api/Album;->owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/perm/kate/api/Album;->aid:J

    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$6;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, v1, v2, p1}, Lcom/perm/kate/Helper;->ShowAlbum(Ljava/lang/String;JLandroid/content/Context;)V

    return-void
.end method
