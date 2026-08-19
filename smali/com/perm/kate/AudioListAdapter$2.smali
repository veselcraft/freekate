.class Lcom/perm/kate/AudioListAdapter$2;
.super Ljava/lang/Object;
.source "AudioListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioListAdapter;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 243
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v1}, Lcom/perm/kate/AudioListAdapter;->access$100(Lcom/perm/kate/AudioListAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v0}, Lcom/perm/kate/AudioListAdapter;->access$100(Lcom/perm/kate/AudioListAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v0}, Lcom/perm/kate/AudioListAdapter;->access$100(Lcom/perm/kate/AudioListAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 251
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/AudioListAdapter$2;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {p1}, Lcom/perm/kate/AudioListAdapter;->access$200(Lcom/perm/kate/AudioListAdapter;)V

    :cond_1
    return-void
.end method
