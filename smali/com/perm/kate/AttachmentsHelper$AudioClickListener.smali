.class Lcom/perm/kate/AttachmentsHelper$AudioClickListener;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field ad_data:Ljava/lang/String;

.field audios:Ljava/util/ArrayList;

.field post_ids:Ljava/lang/String;

.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;

.field track_code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1460
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1461
    iput-object p2, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->audios:Ljava/util/ArrayList;

    .line 1462
    iput-object p3, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->post_ids:Ljava/lang/String;

    .line 1463
    iput-object p4, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->ad_data:Ljava/lang/String;

    .line 1464
    iput-object p5, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->track_code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1468
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 1469
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v0, p1, Lcom/perm/kate/AttachmentsHelper;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->audios:Ljava/util/ArrayList;

    iget v3, p1, Lcom/perm/kate/AttachmentsHelper;->source:I

    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->post_ids:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->ad_data:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->track_code:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/AudioClickHelper;->click(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
