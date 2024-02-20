.class public Lcom/example/myapplication/domain;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "domain.java"


# static fields
.field static count1:I

.field static count10:I

.field static count11:I

.field static count12:I

.field static count13:I

.field static count14:I

.field static count15:I

.field static count16:I

.field static count17:I

.field static count18:I

.field static count19:I

.field static count2:I

.field static count20:I

.field static count3:I

.field static count4:I

.field static count5:I

.field static count6:I

.field static count7:I

.field static count8:I

.field static count9:I


# instance fields
.field btn:Landroid/widget/Button;

.field hour:I

.field i:I

.field min:I

.field sec:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/example/myapplication/domain;->count1:I

    sput v0, Lcom/example/myapplication/domain;->count2:I

    sput v0, Lcom/example/myapplication/domain;->count3:I

    sput v0, Lcom/example/myapplication/domain;->count4:I

    sput v0, Lcom/example/myapplication/domain;->count5:I

    sput v0, Lcom/example/myapplication/domain;->count6:I

    sput v0, Lcom/example/myapplication/domain;->count7:I

    sput v0, Lcom/example/myapplication/domain;->count8:I

    sput v0, Lcom/example/myapplication/domain;->count9:I

    sput v0, Lcom/example/myapplication/domain;->count10:I

    sput v0, Lcom/example/myapplication/domain;->count11:I

    sput v0, Lcom/example/myapplication/domain;->count12:I

    sput v0, Lcom/example/myapplication/domain;->count13:I

    sput v0, Lcom/example/myapplication/domain;->count14:I

    sput v0, Lcom/example/myapplication/domain;->count15:I

    sput v0, Lcom/example/myapplication/domain;->count16:I

    sput v0, Lcom/example/myapplication/domain;->count17:I

    sput v0, Lcom/example/myapplication/domain;->count18:I

    sput v0, Lcom/example/myapplication/domain;->count19:I

    sput v0, Lcom/example/myapplication/domain;->count20:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/myapplication/domain;->hour:I

    .line 17
    iput v0, p0, Lcom/example/myapplication/domain;->min:I

    .line 18
    iput v0, p0, Lcom/example/myapplication/domain;->i:I

    .line 19
    iput v0, p0, Lcom/example/myapplication/domain;->sec:I

    return-void
.end method


# virtual methods
.method public gotoUrl(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 217
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 218
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/example/myapplication/domain;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->setContentView(I)V

    .line 51
    return-void
.end method

.method public scroll(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 55
    sget v0, Lcom/example/myapplication/domain;->count1:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count1:I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Agribusiness:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    const-string v0, "https://courseware.cutm.ac.in/courses/agri-business-management/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public scroll1(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 65
    sget v0, Lcom/example/myapplication/domain;->count2:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count2:I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on AR-VR:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    const-string v0, "https://courseware.cutm.ac.in/courses/introduction-to-ar-vr/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public scroll10(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 137
    sget v0, Lcom/example/myapplication/domain;->count11:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count11:I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on B2B:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count11:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    const-string v0, "https://courseware.cutm.ac.in/courses/marketing-domain-b2b-marketing/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public scroll11(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 145
    sget v0, Lcom/example/myapplication/domain;->count12:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count12:I

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Data Analytics:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count12:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    const-string v0, "https://courseware.cutm.ac.in/courses/introduction-to-data-analytics/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public scroll12(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 153
    sget v0, Lcom/example/myapplication/domain;->count13:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count13:I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Data Science:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count13:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    const-string v0, "https://courseware.cutm.ac.in/courses/17927/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public scroll13(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 161
    sget v0, Lcom/example/myapplication/domain;->count14:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count14:I

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Digital Marketing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count14:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    const-string v0, "hhttps://courseware.cutm.ac.in/courses/marketing-domain-digital-marketing-and-marketing-communications/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public scroll14(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 169
    sget v0, Lcom/example/myapplication/domain;->count15:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count15:I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLicks on Ecommerce:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count15:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    const-string v0, "https://courseware.cutm.ac.in/courses/e-commerce/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public scroll15(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 177
    sget v0, Lcom/example/myapplication/domain;->count16:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count16:I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Electrography:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count16:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    const-string v0, "https://courseware.cutm.ac.in/courses/68328/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public scroll16(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 185
    sget v0, Lcom/example/myapplication/domain;->count17:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count17:I

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Embdded Systems:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count17:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    const-string v0, "https://courseware.cutm.ac.in/courses/2285/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public scroll17(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 193
    sget v0, Lcom/example/myapplication/domain;->count18:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count18:I

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Food Processing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count18:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    const-string v0, "https://courseware.cutm.ac.in/courses/food-processing/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public scroll18(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 201
    sget v0, Lcom/example/myapplication/domain;->count19:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count19:I

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Internet Web:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count19:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    const-string v0, "https://courseware.cutm.ac.in/courses/internet-and-web-technology/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public scroll19(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 209
    sget v0, Lcom/example/myapplication/domain;->count20:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count20:I

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLicks on Job Readiness:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count20:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    const-string v0, "https://courseware.cutm.ac.in/courses/25090/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public scroll2(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 73
    sget v0, Lcom/example/myapplication/domain;->count3:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count3:I

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Automobile Engineering:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count3:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    const-string v0, "https://courseware.cutm.ac.in/courses/automobile-engineering/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public scroll3(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 81
    sget v0, Lcom/example/myapplication/domain;->count4:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count4:I

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Business Statistics:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count4:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    const-string v0, "https://courseware.cutm.ac.in/courses/business-statistics-2/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public scroll4(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 89
    sget v0, Lcom/example/myapplication/domain;->count5:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count5:I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Cloud Computing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count5:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    const-string v0, "https://courseware.cutm.ac.in/courses/cloud-technology/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public scroll5(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 97
    sget v0, Lcom/example/myapplication/domain;->count6:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count6:I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on CNC:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count6:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    const-string v0, "https://courseware.cutm.ac.in/courses/cnc-programming-and-cnc-machining/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public scroll6(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 105
    sget v0, Lcom/example/myapplication/domain;->count7:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count7:I

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Communication Systems:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count7:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    const-string v0, "https://courseware.cutm.ac.in/courses/communication-domain/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public scroll7(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 113
    sget v0, Lcom/example/myapplication/domain;->count8:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count8:I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Computer Systems:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count8:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    const-string v0, "https://courseware.cutm.ac.in/courses/computer-system-architecture/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public scroll8(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 121
    sget v0, Lcom/example/myapplication/domain;->count9:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count9:I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Cyber-Security:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count9:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    const-string v0, "https://courseware.cutm.ac.in/courses/domain-track-cyber-security/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public scroll9(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 129
    sget v0, Lcom/example/myapplication/domain;->count10:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/example/myapplication/domain;->count10:I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicks on Cyber With Forencics:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/example/myapplication/domain;->count10:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    const-string v0, "https://courseware.cutm.ac.in/courses/domain-track-cybersecurity-digital-forensics/"

    invoke-virtual {p0, v0}, Lcom/example/myapplication/domain;->gotoUrl(Ljava/lang/String;)V

    .line 133
    return-void
.end method
