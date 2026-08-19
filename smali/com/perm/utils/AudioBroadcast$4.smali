.class Lcom/perm/utils/AudioBroadcast$4;
.super Ljava/lang/Object;
.source "AudioBroadcast.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$list_ids:[Ljava/lang/String;

.field final synthetic val$new_checked:[Z

.field final synthetic val$size:I


# direct methods
.method constructor <init>(I[Z[Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/perm/utils/AudioBroadcast$4;->val$size:I

    iput-object p2, p0, Lcom/perm/utils/AudioBroadcast$4;->val$new_checked:[Z

    iput-object p3, p0, Lcom/perm/utils/AudioBroadcast$4;->val$list_ids:[Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/utils/AudioBroadcast$4;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, ""

    const/4 p2, 0x0

    .line 156
    :goto_0
    iget v0, p0, Lcom/perm/utils/AudioBroadcast$4;->val$size:I

    if-ge p2, v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/perm/utils/AudioBroadcast$4;->val$new_checked:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_1

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/perm/utils/AudioBroadcast$4;->val$list_ids:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {p1}, Lcom/perm/utils/AudioBroadcast;->setEnabled(Ljava/lang/String;)V

    .line 164
    invoke-static {p1}, Lcom/perm/utils/AudioBroadcast;->access$200(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/perm/utils/AudioBroadcast$4;->val$activity:Lcom/perm/kate/BaseActivity;

    instance-of p2, p1, Lcom/perm/kate/PlayerActivity;

    if-eqz p2, :cond_3

    .line 168
    check-cast p1, Lcom/perm/kate/PlayerActivity;

    invoke-virtual {p1}, Lcom/perm/kate/PlayerActivity;->updateBroadcastButton()V

    :cond_3
    return-void
.end method
