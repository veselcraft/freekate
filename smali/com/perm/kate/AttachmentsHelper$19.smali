.class Lcom/perm/kate/AttachmentsHelper$19;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 1946
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$19;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8

    .line 1958
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->downloadVoiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1959
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$19;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const v0, 0x7f0f0457

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void

    .line 1962
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 1963
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 1966
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->access$300()Lcom/perm/kate/api/Audio;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 1967
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->access$300()Lcom/perm/kate/api/Audio;

    move-result-object v1

    iget-wide v2, v1, Lcom/perm/kate/api/Audio;->aid:J

    .line 1968
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->access$300()Lcom/perm/kate/api/Audio;

    move-result-object v1

    iget-wide v4, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    goto :goto_0

    :cond_1
    move-wide v4, v2

    .line 1970
    :goto_0
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->access$400()Lcom/perm/kate/Player;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->access$400()Lcom/perm/kate/Player;

    move-result-object v1

    iget v1, v1, Lcom/perm/kate/Player;->state:I

    if-nez v1, :cond_2

    iget-wide v6, v0, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    iget-wide v0, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 1971
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->access$400()Lcom/perm/kate/Player;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/perm/kate/Player;->seek(I)V

    :cond_2
    return-void
.end method
