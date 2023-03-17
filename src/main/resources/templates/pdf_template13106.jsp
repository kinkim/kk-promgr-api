<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../inc_common.jsp" %>
<%@ include file="../../inc_doctype.jsp" %>
<jsp:useBean id="constant" scope="page"
             class="com.dragon.plat.common.Constant"></jsp:useBean>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Untitled Document</title>
    <style>

    * {
        font-size: 12px;
        font-family: "SimSun";
    }

    body {
        margin: 0;
        padding: 0;
    }

    h1 {
        position: relative;
        text-align: center;
        height: 71px;
        line-height: 71px;
        font-size: 18px;
        font-weight: bold;
        margin: 0;
        padding: 0;
    }

    h1 img {
        position: absolute;
        left: 10px;
        top: 10px;
    }

    h3 {
        line-height: 6px;
    }

    h2 {
        position: relative;
        text-align: center;
        height: 51px;
        line-height: 31px;
        font-size: 20px;
        font-weight: bold;
        margin: 0;
        padding: 0;
    }

    h2 img {
        position: absolute;
        left: 10px;
        top: 8px;
    }

    table {
        margin: 7px;
        table-layout: fixed;
        width: 98%;
        margin: 0 auto;
    }

    table tr td {
        height: 6px;
    }

    .p-left {
        margin: 3px 0;
    }

    p {
        margin: 0;
    }

    .lineHeightText {
        line-height: 25px;
    }

    .textIndent {
        text-indent: 2em;
    }

    u {
        text-decoration: none;
        padding: 2px 10px;
        border-bottom: 1px solid black;
    }
    </style>
</head>

<body style="width: 100%;">
<div style="height: 1000px;width: 100%;text-align: center;">
    <p style="height: 100px;"></p>
    <h1 style="font-size: 50px;font-weight: bold;width: 550px;margin: 0 auto;">重庆两江新区宝升小额贷款股份有限公司</h1>
    <p style="height: 200px;"></p>
    <h1 style="font-size: 40px;font-weight: bold;">个人借款合同</h1>
</div>
<h1>个人借款合同</h1>
<p align="right" style="margin-top: 8px;margin-right:40px;">合同编号：<u> &nbsp;${member.loan.applySn}&nbsp; </u>
    <!--（<u> ${currYear} </u>）年借字第<u> ${member.loan.xtSn} </u>号-->
</p>
<br/>
<p class="lineHeightText textIndent">贷款人（甲方）：重庆两江新区宝升小额贷款股份有限公司 </p>
<p class="lineHeightText textIndent">法定代表人： 郑伟京 &nbsp;</p>
<p class="lineHeightText textIndent">注册地址：重庆市渝北区财富大道 13 号第 8 层</p>
<p class="lineHeightText textIndent">联系电话：023-63062222</p>
<p class="lineHeightText textIndent">联系地址：重庆市渝北区财富中心 A 座 17-6</p>
<br/>
<p class="lineHeightText textIndent">借款人（乙方）：<u> ${member.realName} </u></p>
<p class="lineHeightText textIndent">身份证号码：<u> ${member.memberClientele.creSn} </u></p>
<p class="lineHeightText textIndent">
    住所地：<u> ${member.paramMap.censusProvince}${member.paramMap.censusCity}${member.paramMap.censusDistrict}${member.memberClientele.censusAddrDetail} </u>
</p>
<p class="lineHeightText textIndent" style="margin-bottom:15px;">联系电话：<u> ${member.mobile} </u></p>

<p class="lineHeightText">根据《中华人民共和国合同法》及相关法律法规、司法解释等，经甲乙双方平等协商一致签订本合同，以明确各方权利和义务。</p>
<p class="lineHeightText textIndent"><strong>第一条 借款用途</strong></p>
<p class="lineHeightText textIndent">乙方向甲方借款，用于<u> &nbsp;&nbsp;&nbsp;&nbsp;消费&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>。未经甲方书面同意，乙方不得改变借款用途。
</p>
<p class="lineHeightText textIndent"><strong>第二条 借款金额与期限</strong></p>
<p class="lineHeightText textIndent">借款金额为 ¥<u> &nbsp;&nbsp;${member.loan.loanAmt}&nbsp;&nbsp; </u>元（大写：人民币<u> &nbsp;&nbsp;${LoanAmtUp}&nbsp;&nbsp; </u>）。
</p>
<p class="lineHeightText textIndent">借款期限<u>
    &nbsp;${member.loan.periods}&nbsp; </u>月（天），自<u> ${currDate} </u>起至<u> ${latDate} </u>止。
</p><!--${latDate}-->
<p class="lineHeightText textIndent">实际借款期限、借款金额、发放日期以划款凭证记载为准。划款凭证为本合同组成部分，与本合同具有同等法律效力。</p>
<p class="lineHeightText textIndent"><strong>第三条 贷款利率</strong></p>
<p class="lineHeightText textIndent">甲方发放给乙方的贷款，固定年利率<u> 15.00 </u>%。在约定的借款期限内，需要调整借款利率或计息方式的，必须由甲、乙双方协商确定。</p>
<p class="lineHeightText textIndent"><strong>第四条 贷款发放</strong></p>
<p class="lineHeightText textIndent"><strong>一、满足下列条件时，甲方始向乙方发放贷款：</strong></p>
<p class="lineHeightText textIndent">
    （一）本合同已经有权各方签署，且乙方根据甲方要求签署所有必要文书，提供必要证照、证明、单据等文件、资料，并完成相关手续，且前述文件、资料及相关手续持续合法有效；</p>
<p class="lineHeightText textIndent">（二）本合同项下的担保合同（如有）已生效并持续合法有效，如担保合同系质押合同及/或抵押合同的，担保物权已设立并持续合法有效；</p>
<p class="lineHeightText textIndent">（三）乙方未出现任何影响或可能影响乙方偿付能力的重大不利情形；</p>
<p class="lineHeightText textIndent">（四）担保人或担保物未出现任何影响担保能力的重大不利情形；</p>
<p class="lineHeightText textIndent">（五）乙方未出现任何违反本合同约定的情形。</p>
<p class="lineHeightText textIndent">（六）其他：_____________________________________________________________</p>
<p class="lineHeightText textIndent"><strong>二、甲方将贷款划入乙方指定的以下账户：</strong></p>
<p class="lineHeightText textIndent">户 名：<u> &nbsp;${member.loan.repaymentName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>
</p>
<p class="lineHeightText textIndent">账 号：<u> &nbsp;${member.loan.repaymentAccount} &nbsp;</u></p>
<p class="lineHeightText textIndent">开户银行：<u> &nbsp;${member.paramMap.repaymentBank}&nbsp;&nbsp;&nbsp;&nbsp; </u></p>
<p class="lineHeightText textIndent">若上列账户非借款人本人账户或合同签订后发生变更，乙方应出具受托支付说明书。</p>
<p class="lineHeightText textIndent">三、甲方在发放贷款前，发现乙方提供虚假信息与资料、签章不真实，或者有其他足以危及贷款安全的重大情形的，有权停止发放贷款。</p>
<p class="lineHeightText textIndent"><strong>第五条 还款与利息支付方式</strong></p>
<p class="lineHeightText textIndent">一、结息时间与方式与采用以下第（二）种：</p>
<p class="lineHeightText textIndent">（一）按月结息，结息日为每月__日；</p>
<p class="lineHeightText textIndent">（二）按月结息，贷款发放日对应的每月相同时间；</p>
<p class="lineHeightText textIndent">（三）按季结息，结息日为每季末月的__日；</p>
<p class="lineHeightText textIndent">（四）利随本清，利息于借款全部到期日一次付清。</p>
<p class="lineHeightText textIndent">
    结息日为法定节假日或公休日，应在法定节假日或公休日前最后一个银行营业日归还贷款的，按合同利率计收利息，但应扣除到期日与归还日之间的天数所对应的按合同利率计算的利息；在法定节假日或公休日后第一个银行营业日归还贷款的，按合同利率加收到期日与归还日之间的天数所对应的利息，在法定节假日或公休日后第一个银行营业日未归还贷款的，从该日期起按逾期贷款计收利息。</p>
<p class="lineHeightText textIndent">二、还本付息采用下列第<u> 四 </u>种方式：</p>
<p class="lineHeightText textIndent">（一）按月付息到期还本：按月付息到期一次性还本。</p>
<p class="lineHeightText textIndent">（二）按季付息到期还本：按季付息到期一次性还本。</p>
<p class="lineHeightText textIndent">（三）到期一次性还本付息：在贷款到期日一次性还本付息。</p>
<p class="lineHeightText textIndent">（四）等额本息：每次偿还的本息金额相同，其中每次偿还的本金逐次增加、利息逐次减少。</p>
<p class="lineHeightText textIndent">（五）等额本金：每次偿还的本息金额逐次减少，其中每次偿还的本金相同、利息逐次减少。</p>
<p class="lineHeightText textIndent">（六）等本等息：每次偿还相同数额的本金和利息。</p>
<p class="lineHeightText textIndent">（七）预收利息分期还本付息：在贷款发放时从本金中扣除部分利息，扣除部分不再作为本金重复计息。</p>
<p class="lineHeightText textIndent">（八）分期还款：双方协商约定不同期次的还本金额，利息逐次减少，具体约定以还款计划书为准。</p>
<p class="lineHeightText textIndent">三、乙方支付利息或者归还本金时，应存入甲方指定以下账户：</p>
<p class="lineHeightText textIndent">户&nbsp;&nbsp;名：<u> &nbsp;重庆两江新区宝升小额贷款股份有限公司&nbsp; </u></p>
<p class="lineHeightText textIndent">账&nbsp;&nbsp;号：<u> &nbsp;&nbsp;&nbsp;230101040026799&nbsp;&nbsp; </u></p>
<p class="lineHeightText textIndent">开户银行：<u> 重庆银行股份有限公司龙头寺支行 </u></p>
<p class="lineHeightText textIndent">
    四、甲方可以通过委托银行代扣代收本息的方式收款，但双方需另行与受托银行签订相关协议，在此情况下，乙方应在本合同约定的结息日或者贷款到期日前将用于支付利息以及归还本金的资金足额存入协议约定账户。</p>
<p class="lineHeightText textIndent">五、本合同项下借款利息自甲方将借款划款之日起开始计算，若为甲方分期支付，则（从第一笔借款支付之日起算）按笔以如下公式进行计算。</p>
<p class="lineHeightText textIndent">利息计算公式为：利息=本金×实际占用本金天数×日利率，日利率=年利率/360</p>
<p class="lineHeightText textIndent"><strong>六、除双方另有约定外，乙方未按时足额还本付息的，已经偿还的全部金额优先抵偿已经产生的利息及费用，余额用于偿还本金，不足以清偿全部本金的，甲方有权决定乙方所付款项偿还借款的顺序；对有2笔（含）以上借款到期的情况下，甲方有权决定乙方所付款项偿还借款的顺序。</strong>
</p>
<p class="lineHeightText textIndent">
    七、本债权同时存在物的担保（含债务人或第三人提供）和保证担保的，债权人可以就物的担保实现债权，也可以要求保证人承担保证责任。债权人已经选择某一担保来实现债权的，也可同时主张通过其他担保来实现全部或部分债权。</p>
<p class="lineHeightText textIndent"><strong>第六条 提前还款</strong></p>
<p class="lineHeightText textIndent">一、乙方提前还款，需同时满足以下几个条件：（一）乙方需正常还款三个月以上；（二）应在指定还款日后1-8日内电话通知甲方或甲方的合作方办理提前还款预约；（三）乙方当前无逾期。经甲方书面同意后，乙方可提前还款。乙方因情况变化需全部或者部分提前还款时，应提前一周书面通知甲方，告知提前还款金额与时间。如果乙方未能于还款日前或者还款日当日存入足额资金，使得提前还款未成功的，乙方若需提前还款需要重新向甲方或甲方的合作方提出申请。</p>
<p class="lineHeightText textIndent">二、如果借款分期到期的，提前还款的金额按照到期<b>先后顺序依次</b>进行还款。</p>
<p class="lineHeightText textIndent">三、甲方放款成功3日后乙方申请取消贷款按合同约定的提前结清处理。</p>
<p class="lineHeightText textIndent"><strong>第七条 罚息</strong></p>
<p class="lineHeightText textIndent">
    一、逾期还款的，仅就逾期部分的本金，本合同第三条约定的贷款利率作废，按本条约定利率重新计算利息作为罚息，直至清偿本息为止；已经偿还但未能足额还付本息的，视为逾期还款，以该期本金全额依本条约定的利率重新计算罚息以后，按照先息后本的顺序偿还本息。</p>
<p class="lineHeightText textIndent">二、<strong>罚息利率：逾期应付而未付的本金按年<u> 18.00% </u>计算罚息，直至清偿本息为止。</strong></p>
<p class="lineHeightText textIndent"><strong>第八条 担保措施</strong></p>
<p class="lineHeightText textIndent">对本合同项下借款，乙方提供以下担保措施：</p>
<p class="lineHeightText textIndent">一、由_______________________________________提供连带责任保证担保；</p>
<p class="lineHeightText textIndent">二、以_______________________________________设置抵押担保；</p>
<p class="lineHeightText textIndent">三、以_______________________________________设置质押担保。</p>
<p class="lineHeightText textIndent">本条约定的担保措施，双方或者甲方与担保方另行签订担保合同，依据法律规定担保物权需经登记生效的，应依法登记。</p>
<p class="lineHeightText textIndent"><strong>第九条 贷款使用监督</strong></p>
<p class="lineHeightText textIndent">
    为监督乙方借款用于约定用途和确保乙方按约定期限偿还借款本息，甲方对乙方使用贷款期间的经营管理活动、重大事项决策、重大财产处分行为有权进行监督，乙方应按甲方要求提供相关的财务报表、凭证及合同等资料予以配合。具体监督办法双方可另行签订协议约定。</p>
<p class="lineHeightText textIndent"><strong>第十条 贷款展期</strong></p>
<p class="lineHeightText textIndent">
    乙方申请展期的，应按约定还款期限提前7日向甲方书面提出。甲方经审查同意展期的，双方另行签订书面协议确认；甲方不同意展期的，乙方仍按本合同约定期限履行还款义务或者承担违约责任。</p>
<p class="lineHeightText textIndent"><strong>第十一条 提前到期</strong></p>
<p class="lineHeightText textIndent">有下列情况之一的，甲方均可随时要求乙方立即偿还剩余借款本金、利息及履行本合同项下全部义务：</p>
<p class="lineHeightText textIndent">一、未按期偿还本金或未按期支付利息。</p>
<p class="lineHeightText textIndent">二、未按约定的借款用途使用借款的。</p>
<p class="lineHeightText textIndent">三、未按期向甲方清偿其他到期债务或未按期清偿其他任何金融机构或第三人到期债务的。</p>
<p class="lineHeightText textIndent">
    四、乙方为签订本合同向甲方提供的信息与资料有任何一项虚假的；未提供真实、完整的财务报表或其他相关资料、信息；不积极配合甲方对其生产经营、财务活动及本合同项下借款使用情况的检查的。</p>
<p class="lineHeightText textIndent">五、进行或申请进行破产、申请停业整顿、解散、歇业，或被上级主管部门撤销或停业。</p>
<p class="lineHeightText textIndent">六、涉及诉讼、仲裁或其资产被扣押、查封、冻结、强制执行或被采取了具有同样效力的其他措施。</p>
<p class="lineHeightText textIndent">七、签署对履行本合同项下义务的能力有重大不利影响的合同、协议或承担具有这一影响的有关义务。</p>
<p class="lineHeightText textIndent">八、未征得债权人书面同意而转让(包括出售、赠与、抵债、交换等形式)、抵押、质押或以其他方式处分其重大资产的全部或大部分以及为他人债务提供保证。</p>
<p class="lineHeightText textIndent">九、任意一期逾期超过应还款日5日的。</p>
<p class="lineHeightText textIndent"><strong>第十二条 声明与承诺</strong></p>
<p class="lineHeightText textIndent"><strong>一、乙方声明：</strong></p>
<p class="lineHeightText textIndent">乙方作出如下声明和保证，且该声明和保证应视同在甲方每次按照本合同的约定向乙方提供融资时，由乙方重复做出：</p>
<p class="lineHeightText textIndent">（一）乙方为自然人，具备签订和履行本合同所需的完全民事权利能力和行为能力；签署和履行本合同系基于乙方的真实意思表示，已对其具有法律约束力。</p>
<p class="lineHeightText textIndent"><strong>（二）乙方同意甲方根据有关监管规定，将与本合同有关的信息和乙方其他相关信息提报送小额贷款公司的监管部门、行业自律组织和监管信息系统，供监管部门使用和乙方授权查询使用。</strong>
</p>
<p class="lineHeightText textIndent"><strong>（三）乙方同意甲方根据有关法律法规、监管规定，将与本合同有关的信息和乙方其他相关信息提供给中国人民银行征信系统和其他依法设立的信用信息数据库。甲方有权为本合同订立和履行之目的，通过中国人民银行征信系统和其他依法设立的信用信息数据库查询乙方和保证人的相关信息。</strong>
</p>
<p class="lineHeightText textIndent"><strong>（四）乙方在此保证，将按照本合同约定的借款用途使用借款，并按本合同约定的还款、付息时间按期归还借款本息；如违反本合同约定时，甲方除依法追究乙方违约责任外，有权将乙方的违约行为录入行业监管系统和征信系统。</strong>
</p>
<p class="lineHeightText textIndent">（五）乙方在此保证，在签署和履行本合同过程中恪守诚实守信原则，其所出具的涉及乙方以及涉及本合同的所有文件、信息和资料均为真实、有效、完整、准确而无任何隐瞒的。</p>
<p class="lineHeightText textIndent">（六）乙方在此保证，其签署和履行本合同的行为并不违反其所应遵守的法律、法规、规章、判决、裁决及命令，也不与其签署的任何合同、协议或承担的任何其他义务相抵触。</p>
<p class="lineHeightText textIndent">（七）乙方在此保证，将严格遵守法律、法规的规定，严格按照乙方的营业执照规定的或依法核定的经营范围开展各项业务，按时办理注册年检手续。</p>
<p class="lineHeightText textIndent">
    （八）乙方在此保证，在本合同签署时没有隐瞒已经发生或将要发生的任何影响或可能影响其签署或履行本合同、或可能对其财务状况产生不利影响的诉讼案件、仲裁案件、行政程序、财产保全措施、强制执行程序或其他不利影响的事件；并且，乙方将在本合同履行期内继续向甲方承担上述信息的及时披露义务。在发生前述事件时，乙方在发生之日或其知悉之日通知甲方。</p>
<p class="lineHeightText textIndent">（九）乙方在此保证，其住址、或联系地址、联系电话等信息发生变更后，自该变更发生之日书面通知甲方。</p>
<p class="lineHeightText textIndent">（十）乙方保证其为签署、履行本合同所需的所有手续均已合法办理完毕并有效。</p>
<p class="lineHeightText textIndent">（十一）乙方保证在贷款期间，因担保物价值发生减少，将根据甲方的要求，提供、增加或变更担保措施。</p>
<p class="lineHeightText textIndent">（十二）乙方保证不存在对其履约能力造成或可能造成不利影响的其他情况或事件。</p>
<p class="lineHeightText textIndent"><strong>二、乙方承诺：</strong></p>
<p class="lineHeightText textIndent">（一）乙方按时偿还借款本息并支付相关费用，并承诺严格遵守并履行本合同项下的各项义务。</p>
<p class="lineHeightText textIndent">（二）乙方在贷款发放后因使用该贷款资金与他人发生的任何纠纷，均与甲方无关，本借款合同正常履行。</p>
<p class="lineHeightText textIndent">
    （三）乙方当在获悉其卷入或可能卷入任何可能对其产生不利影响的经济、民事、刑事、行政诉讼程序或类似仲裁程序之日，或在获悉其任何重要资产涉及任何强制执行、查封、扣押、冻结、留置、监管或其他具有同等效力的措施之日，立即通知甲方并详细说明所构成的影响及已采取或计划采取的补救措施，并于获悉该事件发生之日起三个工作日内将书面通知、证明和说明文件原件（法人和其他组织须加盖公章，自然人须经签署）送达甲方。</p>
<p class="lineHeightText textIndent">（四）乙方承诺不违反本合同约定的正常偿还次序而对其他贷款予以优先清偿，且现在和将来不签署任何致使本合同项下的贷款处于从属地位的合同。</p>
<p class="lineHeightText textIndent">（五）自本合同签署之日起，至本合同项下的债务全部清偿完毕之前，未经甲方书面同意，乙方不得：</p>
<p class="lineHeightText textIndent">（1）如乙方经营企业的，其经营企业进行清算、重整、破产、合并（被兼并）、分立、重组、解散、减资或类似法律程序；</p>
<p class="lineHeightText textIndent">（2）出售、出租、赠与、转移或以其它任何方式处分其任何重要资产；</p>
<p class="lineHeightText textIndent">（3）如乙方经营企业的，其经营企业股权结构发生任何变更；</p>
<p class="lineHeightText textIndent">（4）为第三方提供足以对其财务状况或其履行本合同项下的义务的能力产生不利影响的担保；</p>
<p class="lineHeightText textIndent">（5）签署对乙方履行本合同项下义务的能力有不利影响的合同/协议或承担具有这一影响的有关义务。</p>
<p class="lineHeightText textIndent">
    （六）本合同项下的担保在遇到特定情形或发生特定变化时，乙方会按照甲方的要求及时提供甲方认可的其他担保。该特定情形或特定变化包括但不限于担保人停产、歇业、解散、停业整顿、营业执照被吊销或被撤销、申请或被申请重整、破产、经营或财务状况有重大变化、涉及诉讼或仲裁案件、法定代表人、董事、监事、主要经营管理人员涉案、担保物的价值减少或可能减少或被采取查封等财产保全措施、在担保合同项下有违约行为以及要求解除担保合同等。</p>
<p class="lineHeightText textIndent">（七）乙方随时通知甲方任何可能影响其履行本合同及与本合同相关的任何文件项下义务的能力的事件。</p>
<p class="lineHeightText textIndent"><strong>第十三条 甲方违约责任</strong></p>
<p class="lineHeightText textIndent">一、满足本合同约定贷款发放条件，甲方无正当理由延期或者拒不发放贷款的，应赔偿乙方因此而发生的经济损失。</p>
<p class="lineHeightText textIndent">二、要求贷款人赔偿因其违约而给借款人造成的损失，包括但不限于因实现债权而导致的诉讼费、律师费、公证费、执行费等相关费用损失。</p>
<p class="lineHeightText textIndent"><strong>第十四条 乙方违约责任</strong></p>
<p class="lineHeightText textIndent">乙方因违反本合同约定，造成借款不能及时足额偿还，甲方有权采取下列一种或数种措施进行处理：</p>
<p class="lineHeightText textIndent">一、要求借款人、担保人限期纠正其违约行为；</p>
<p class="lineHeightText textIndent">二、单方面调整乙方的还款方式；</p>
<p class="lineHeightText textIndent">三、单方面调整乙方的贷款支付方式；</p>
<p class="lineHeightText textIndent">四、宣布本合同项下的乙方已提用贷款部分的本息立即部分或全部提前到期，未提用部分取消，并通过各种形式向乙方及担保人追索；</p>
<p class="lineHeightText textIndent">五、要求借款人赔偿因其违约而给贷款人造成的损失，包括但不限于因实现债权而导致的诉讼费、律师费、公证费、执行费等相关费用损失；</p>
<p class="lineHeightText textIndent">七、要求乙方另行提供经甲方认可的保证、抵押、质押或其他担保；</p>
<p class="lineHeightText textIndent">八、按乙方为本贷款所提供担保的担保合同约定处分抵押物或质物，清偿贷款本息，或依法追索保证人的连带责任；</p>
<p class="lineHeightText textIndent">九、采取法律法规允许的其他必要措施；</p>
<p class="lineHeightText textIndent">十、其他处理方式_________________。</p>
<p class="lineHeightText textIndent"><strong>第十五条 争议解决</strong></p>
<p class="lineHeightText textIndent">
    一、本合同适用中华人民共和国法律（基于本合同之目的，在此不包括香港、澳门特别行政区和台湾地区法律），并按其解释。有关本合同的一切争议可通过友好协商解决；协商不成的，双方当事人选择以下（二）方式解决，争议期间，各方仍应继续履行未涉争议的条款：</p>
<p class="lineHeightText textIndent">（一）向【北海国际仲裁院】提起仲裁；</p>
<p class="lineHeightText textIndent">（二）向甲方所在地或乙方所在地或发生债权转让后债权受让人所在地人民法院提起诉讼。</p>
<p class="lineHeightText textIndent">二、在争议解决期间，若该争议不影响本合同其他条款的履行，则其他条款应继续履行。因争议产生的诉讼费、保全申请费、保全担保费、保全保险费、律师费、差旅费、鉴定费、执行费等诉讼费用由乙方承担。</p>
<p class="lineHeightText textIndent"><strong>第十六条 通知与送达</strong></p>
<p class="lineHeightText textIndent">
    一、本合同双方根据本合同约定作出的通知、文件均应以书面形式做出，可由专人送达、挂号邮递、电子邮件、手机短信等方式传送。双方同意以本合同首部载明的联系地址作为发生争议时及/或诉讼程序中的相关函件/法律文书的有效
    送达地址，如一方联系地址发生变更，应在变更后 2 日内书面通知另一方，否则应承担送达不利的法律后果。</p>
<p class="lineHeightText textIndent">二、通知、文件在下列日期视为送达：</p>
<p class="lineHeightText textIndent">（一） 专人递送的，在专人递送之交付日视为有效送达；</p>
<p class="lineHeightText textIndent">（二） 以挂号信（付清邮资）发出的，在寄出当日（以邮戳为凭）视为有效送达；</p>
<p class="lineHeightText textIndent">（三） 以快递发出的，在寄出当日（以快递单记录为准）视为有效送达；</p>
<p class="lineHeightText textIndent">（四） 以数据电文发出的，在有效发出时视为有效送达；</p>
<p class="lineHeightText textIndent">三、乙方若认为邮件封面标题与邮件中实际文件内容不符的，应在自收到邮件之日起三个工作日内书面通知甲方，逾期视为邮件封面标题与邮件中实际文件内容一致。</p>
<p class="lineHeightText textIndent"><strong>第十七条 赋予强制执行效力公证</strong></p>
<p class="lineHeightText textIndent">
    一、为确保按时偿还借款本息，乙方同意就本合同向公证处申请赋予强制执行效力公证并接受人民法院执行强制公证；乙方未履行或未完全履行本合同规定义务，乙方自愿放弃诉讼并接受法院执行；</p>
<p class="lineHeightText textIndent">二、经双方协商约定，本合同公证费用由乙方承担；</p>
<p class="lineHeightText textIndent">三、如果双方未就本合同申请赋予强制执行效力公证，本条约定不适用。</p>
<p class="lineHeightText textIndent"><strong>第十八条 权利保留</strong></p>
<p class="lineHeightText textIndent">一、一方若未行使本合同项下部分或全部权利，或未要求另一方履行、承担部分或全部义务、责任，并不构成该方对该权利的放弃或对该义务、责任的豁免。</p>
<p class="lineHeightText textIndent">二、一方对另一方的任何宽容、展期或者延缓行使本合同项下的权利，均不影响其根据本合同及法律、法规而享有的任何权利，亦不视为其对该权利的放弃。</p>
<p class="lineHeightText textIndent"><strong>第十九条 其他条款</strong></p>
<p class="lineHeightText textIndent">___________________________________________________________</p>
<p class="lineHeightText textIndent"><strong>第二十条 文本及生效</strong></p>
<p class="lineHeightText textIndent">本合同涉及的其他合同与协议均为本合同附件，为本合同的组成部分，与本合同具有同等法律效力。</p>
<p class="lineHeightText textIndent">本合同一式<u> 三 </u>份，双方各持<u> 一 </u>份，<u> 一 </u>份用于公证或者抵押、质押登记，具有同等法律效力。</p>
<p class="lineHeightText textIndent">本合同经借贷双方的法定代表人（负责人）或其授权签字人签署并加盖公章之日起生效。</p>
<p class="lineHeightText textIndent">
    <strong>甲方工作人员已提请乙方注意对本合同各条款作全面、准确的理解，并应乙方的要求作了相应的条款说明，现乙方已清楚知悉应承担的所有合同义务和责任。签约各方对本合同条款的含义认识一致。</strong></p>
<p class="lineHeightText textIndent">（本页以下无正文，由双方签署）</p>
<p class="lineHeightText textIndent"></p>
<p class="lineHeightText textIndent"></p>
<br/>
<br/>
<p class="lineHeightText textIndent">
<table cellspacing="0" cellpadding="7">
    <tr>
        <td>借款人（乙方）: <u> ${member.realName} </u></td>
        <td>贷款人（甲方）: 重庆两江新区宝升小额贷款股份有限公司</td>
    </tr>
    <tr>
        <td><u> ${currYear} </u>年<u> ${currMonth} </u>月<u> ${currDay} </u>日</td>
        <td><u> ${currYear} </u>年<u> ${currMonth} </u>月<u> ${currDay} </u>日</td>
    </tr>
</table>
</p>
<br/>
</body>
</html>
