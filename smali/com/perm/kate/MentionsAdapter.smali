.class public Lcom/perm/kate/MentionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MentionsAdapter.java"


# instance fields
.field activity:Ljava/lang/ref/WeakReference;

.field private clickListener:Landroid/view/View$OnClickListener;

.field listener:Ljava/lang/ref/WeakReference;

.field public members:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    new-instance v0, Lcom/perm/kate/MentionsAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MentionsAdapter$1;-><init>(Lcom/perm/kate/MentionsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/MentionsAdapter;->clickListener:Landroid/view/View$OnClickListener;

    .line 25
    iput-object p1, p0, Lcom/perm/kate/MentionsAdapter;->listener:Ljava/lang/ref/WeakReference;

    .line 26
    iput-object p2, p0, Lcom/perm/kate/MentionsAdapter;->activity:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object p3, p0, Lcom/perm/kate/MentionsAdapter;->members:Ljava/util/ArrayList;

    .line 28
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/perm/kate/MentionsAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/perm/kate/MentionsAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c00b2

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 54
    :cond_0
    iget-object p3, p0, Lcom/perm/kate/MentionsAdapter;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090188

    .line 55
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/ImageView;

    const p3, 0x7f0903e6

    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/perm/kate/MentionsAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/ChatMember;

    .line 58
    iget-object v0, p1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    const-string v7, ""

    const v8, 0x7f0903e4

    if-eqz v0, :cond_2

    .line 59
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 62
    iget-object v0, p1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p1, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    if-eqz v0, :cond_3

    .line 67
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 68
    iget-object v0, p1, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 70
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_3
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
