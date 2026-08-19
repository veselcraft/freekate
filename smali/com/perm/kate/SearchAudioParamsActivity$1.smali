.class Lcom/perm/kate/SearchAudioParamsActivity$1;
.super Ljava/lang/Object;
.source "SearchAudioParamsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchAudioParamsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchAudioParamsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchAudioParamsActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/perm/kate/SearchAudioParamsActivity$1;->this$0:Lcom/perm/kate/SearchAudioParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/perm/kate/SearchAudioParamsActivity$1;->this$0:Lcom/perm/kate/SearchAudioParamsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
