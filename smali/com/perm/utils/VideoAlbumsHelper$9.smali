.class Lcom/perm/utils/VideoAlbumsHelper$9;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"

# interfaces
.implements Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$check_listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field final synthetic val$checked:[Z

.field final synthetic val$items:[Ljava/lang/CharSequence;

.field final synthetic val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(I[ZLcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$size:I

    iput-object p2, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$checked:[Z

    iput-object p3, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p4, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$items:[Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$check_listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p6, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p7, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(J)V
    .locals 7

    .line 173
    sget-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    iget v1, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$size:I

    if-ge v0, v1, :cond_2

    .line 177
    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/AudioAlbum;

    iget-wide v1, v1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    .line 178
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$checked:[Z

    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/AudioAlbum;

    iget-wide v3, v3, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$items:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$checked:[Z

    iget-object v4, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$check_listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v5, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v6, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static/range {v1 .. v6}, Lcom/perm/utils/VideoAlbumsHelper;->access$600(Lcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    sput-object p1, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroidx/appcompat/app/AlertDialog;

    .line 181
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
