.class final Lcom/perm/utils/VideoAlbumsHelper$9;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"

# interfaces
.implements Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/VideoAlbumsHelper;->showAlbumsDialog(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


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

    .prologue
    .line 171
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
    .param p1, "album_id"    # J

    .prologue
    .line 174
    sget-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 177
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$size:I

    if-ge v6, v0, :cond_2

    .line 178
    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/AudioAlbum;

    iget-wide v0, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 179
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$checked:[Z

    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/AudioAlbum;

    iget-wide v4, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    aput-boolean v0, v1, v6

    .line 177
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$items:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$checked:[Z

    iget-object v3, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$check_listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v4, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/perm/utils/VideoAlbumsHelper$9;->val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static/range {v0 .. v5}, Lcom/perm/utils/VideoAlbumsHelper;->access$500(Lcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroid/support/v7/app/AlertDialog;

    .line 182
    sget-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 183
    return-void
.end method
