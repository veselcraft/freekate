.class Lcom/perm/kate/AudioClickHelper$4;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$a:Lcom/perm/kate/api/Audio;

.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$audios:Ljava/util/ArrayList;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$post_ids:Ljava/lang/String;

.field final synthetic val$source:I

.field final synthetic val$track_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$4;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$4;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$4;->val$a:Lcom/perm/kate/api/Audio;

    iput-object p4, p0, Lcom/perm/kate/AudioClickHelper$4;->val$audios:Ljava/util/ArrayList;

    iput p5, p0, Lcom/perm/kate/AudioClickHelper$4;->val$source:I

    iput-object p6, p0, Lcom/perm/kate/AudioClickHelper$4;->val$ad_data:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/AudioClickHelper$4;->val$post_ids:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/AudioClickHelper$4;->val$track_code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 247
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$4;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_4

    const/4 p2, 0x5

    const-wide/16 v0, -0x1

    if-eq p1, p2, :cond_3

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_1

    const/16 p2, 0xca

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$4;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$4;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {p1, p2}, Lcom/perm/kate/AudioClickHelper;->access$600(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$4;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide p1, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_2

    .line 259
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$4;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    goto :goto_0

    :cond_2
    mul-long p1, p1, v0

    .line 261
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$4;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$4;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$4;->val$a:Lcom/perm/kate/api/Audio;

    iget-object p2, p2, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long v2, v2, v0

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$4;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v0, p2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {p1, v2, v3, v0, v1}, Lcom/perm/kate/AudioClickHelper;->access$100(Lcom/perm/kate/AudioClickHelper;JJ)V

    goto :goto_0

    .line 249
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$4;->val$a:Lcom/perm/kate/api/Audio;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$4;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p2, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$4;->val$audios:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget v2, p0, Lcom/perm/kate/AudioClickHelper$4;->val$source:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/perm/kate/AudioClickHelper;->PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 250
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$4;->val$ad_data:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 251
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$4;->val$post_ids:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$4;->val$ad_data:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$4;->val$track_code:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/perm/utils/AdEvents;->reportAudioStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
