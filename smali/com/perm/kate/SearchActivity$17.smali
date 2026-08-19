.class Lcom/perm/kate/SearchActivity$17;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 736
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    const-string v1, "com.perm.kate.sort"

    if-ne p1, v0, :cond_0

    .line 737
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const-class v2, Lcom/perm/kate/SearchVideoParamsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 738
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "com.perm.kate.adult"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 739
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$900(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.perm.kate.filters"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 741
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.hd"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 742
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 743
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne p1, v0, :cond_1

    .line 744
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const-class v1, Lcom/perm/kate/SearchAudioParamsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 745
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.performer_only"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 746
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 748
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const-class v2, Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 749
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$1100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 750
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$1200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.city"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 751
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$1300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.country"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 752
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$3400(Lcom/perm/kate/SearchActivity;)J

    move-result-wide v0

    const-string v2, "univer"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 753
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$1400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.perm.kate.hometown"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$1500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.university_country"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 755
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$1600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.university"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 756
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$1700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.university_year"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 757
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$1800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.sex"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 758
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$1900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.status"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 759
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$2000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.age_from"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 760
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$2100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.age_to"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 761
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$2200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.birth_day"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 762
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$2300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.birth_month"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 763
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$2400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.birth_year"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 764
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$2500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.online"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 765
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$2600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.has_photo"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 766
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$2700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.school_country"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 767
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$2800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.school_city"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 768
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$2900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.school"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 769
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$3000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.perm.kate.school_year"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 770
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$3100(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.perm.kate.religion"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$3200(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.perm.kate.company"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$3300(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.perm.kate.position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
