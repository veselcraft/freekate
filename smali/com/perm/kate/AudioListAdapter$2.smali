.class Lcom/perm/kate/AudioListAdapter$2;
.super Ljava/lang/Object;
.source "AudioListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioListAdapter;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    move-object v1, p1

    check-cast v1, Landroid/widget/CheckBox;

    .line 237
    .local v1, "cb":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 238
    .local v0, "audio_tag":Lcom/perm/kate/api/Audio;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v2}, Lcom/perm/kate/AudioListAdapter;->access$100(Lcom/perm/kate/AudioListAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v2}, Lcom/perm/kate/AudioListAdapter;->access$100(Lcom/perm/kate/AudioListAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v2}, Lcom/perm/kate/AudioListAdapter;->access$100(Lcom/perm/kate/AudioListAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v2}, Lcom/perm/kate/AudioListAdapter;->access$200(Lcom/perm/kate/AudioListAdapter;)V

    .line 248
    :cond_1
    return-void

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v2}, Lcom/perm/kate/AudioListAdapter;->access$100(Lcom/perm/kate/AudioListAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v2}, Lcom/perm/kate/AudioListAdapter;->access$100(Lcom/perm/kate/AudioListAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
