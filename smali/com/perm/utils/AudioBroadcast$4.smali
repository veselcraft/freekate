.class final Lcom/perm/utils/AudioBroadcast$4;
.super Ljava/lang/Object;
.source "AudioBroadcast.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/AudioBroadcast;->showBroadcastDialog(Lcom/perm/kate/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$list_ids:[Ljava/lang/String;

.field final synthetic val$new_checked:[Z

.field final synthetic val$size:I


# direct methods
.method constructor <init>(I[Z[Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/perm/utils/AudioBroadcast$4;->val$size:I

    iput-object p2, p0, Lcom/perm/utils/AudioBroadcast$4;->val$new_checked:[Z

    iput-object p3, p0, Lcom/perm/utils/AudioBroadcast$4;->val$list_ids:[Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/utils/AudioBroadcast$4;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 175
    const-string v1, ""

    .line 176
    .local v1, "target_ids":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/perm/utils/AudioBroadcast$4;->val$size:I

    if-ge v0, v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/perm/utils/AudioBroadcast$4;->val$new_checked:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/utils/AudioBroadcast$4;->val$list_ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_2
    invoke-static {v1}, Lcom/perm/utils/AudioBroadcast;->setEnabled(Ljava/lang/String;)V

    .line 184
    invoke-static {v1}, Lcom/perm/utils/AudioBroadcast;->access$200(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/perm/utils/AudioBroadcast$4;->val$activity:Lcom/perm/kate/BaseActivity;

    instance-of v2, v2, Lcom/perm/kate/PlayerActivity;

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/perm/utils/AudioBroadcast$4;->val$activity:Lcom/perm/kate/BaseActivity;

    check-cast v2, Lcom/perm/kate/PlayerActivity;

    invoke-virtual {v2}, Lcom/perm/kate/PlayerActivity;->updateBroadcastButton()V

    .line 189
    :cond_3
    return-void
.end method
