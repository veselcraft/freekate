.class Lcom/perm/kate/RecordEpisodeActivity$2;
.super Ljava/lang/Object;
.source "RecordEpisodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/RecordEpisodeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RecordEpisodeActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/RecordEpisodeActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity$2;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity$2;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    iget-object v0, p1, Lcom/perm/kate/RecordEpisodeActivity;->rec:Lcom/perm/kate/VoiceRecorder;

    invoke-virtual {v0, p1}, Lcom/perm/kate/VoiceRecorder;->play(Landroid/app/Activity;)V

    .line 49
    iget-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity$2;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    const v0, 0x7f090298

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
